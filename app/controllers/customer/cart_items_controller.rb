class Customer::CartItemsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @cart_item = CartItem.where(customer_id:current_customer.id)

  end

  def create
    if customer_signed_in?
      @cart_item             = CartItem.new(cart_item_params)
      @cart_item.customer_id = current_customer.id
      if @cart_item.save
        redirect_to cart_items_path
      else
        @item = Item.find(@cart_item.item_id)
        render 'customer/items/show'
      end
    else
      redirect_to new_customer_session_path
    end
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.update(cart_item_params)
    redirect_to request.referer
  end

  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy
    redirect_to request.referer
  end
  
  def destroy_all
    cart_items = CartItem.where(customer_id:current_customer)
    cart_items.destroy_all
    redirect_to request.referer
  end
  
  private
  
  def cart_item_params
    params.require(:cart_item).permit(:amount, :item_id)
  end
end
