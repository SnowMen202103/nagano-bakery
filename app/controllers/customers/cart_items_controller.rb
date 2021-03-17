class Customers::CartItemsController < ApplicationController

  def index
    @cart_item = CartItem.where(customer_id:params[:customer_id])
    @customer = Customer.find(params[:customer_id])
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
    @customer = Customer.find(params[:customer_id])
    @customer.cart_items.destroy_all
    redirect_to request.referer
  end
  
  private
  
  def cart_item_params
    params.require(:cart_item).permit(:amount)
  end
end
