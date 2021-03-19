class Customer::OrdersController < ApplicationController
  before_action :order_params, only: [:cofirm]

  def new
    @order = Order.new
    @addresses = Address.where(customer_id: current_customer.id)
  end
  
  def confirm
    @cart_items = CartItem.where(customer_id:current_customer.id)
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.postage = 800
      if params[:order][:addresses] == "my_address"
        @order.postal_code = current_customer.postal_code
        @order.address = current_customer.address
        @order.name = current_customer.last_name + current_customer.first_name
      elsif params[:order][:addresses] == "addresses"
        address = Address.find(params[:order][:address_id])
        @order.postal_code = address.postal_code
        @order.address = address.address
        @order.name = address.name
      elsif params[:order][:addresses] == "new_address"
        @order.postal_code = params[:order][:postal_code]
        @order.address = params[:order][:address]
        @order.name = params[:order][:name]
      end
  end

  def create
  end
  
  def index
  end

  def show
  end

  def thanks
  end
  
  private
  
  def order_params
    params.require(:order).permit(:pay_way)
  end
  

end
