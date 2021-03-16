class Customers::CartItemsController < ApplicationController
  
  def index
    @cart_item = CartItem.where(customer_id:params[:customer_id])
    @customer = Customer.find(params[:customer_id])
  end

  def update
  end

  def destroy
  end
  

end
