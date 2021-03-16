class Customers::ItemsController < ApplicationController

  def index
    @items = Item.all
  end
  
  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end

  def new
  end

  def edit
  end

  def update
    cart_items = CartItem.new(cart_items_params)
    cart_items.item_id = params[:id]
    cart_items.customer_id = current_customer.id
    cart_items.save
    redirect_to customer_cart_items_path(current_customer)
  end

  def destroy
  end

  private
  
  def cart_items_params
    params.require(:cart_item).permit(:amount)
  end
  
end
