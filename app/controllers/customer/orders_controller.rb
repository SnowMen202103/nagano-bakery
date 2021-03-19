class Customer::OrdersController < ApplicationController
  before_action :order_params, only: [:cofirm]

  def new
    @order = Order.new
  end
  
  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to confirm_orders_path
  end
  
  def confirm
    @cart_items = CartItem.where(customer_id: current_customer.id)
    @order = Order.new
    customer = current_customer

    @order = Order.find_by(customer_id: current_customer.id)
    if params[:order][:addresses] == "residence"
      @order.postal_code = current_customer.postal_code
      @order.address = current_customer.address
      @order.name = current_customer.last_name + current_customer.fisrt_name 
    elsif params[:order][:addresses] == "shipping_addresses"
      ship = Address.find(params[:order][:address_id])
      @order.postal_code = ship.postal_code
      @order.address = ship.address
      @order.name = ship.name
    elsif params[:order][:addresses] == "new_address"
      @order.postal_code = params[:order][:postal_code]
      @order.address = params[:order][:address]
      @order.name = params[:order][:name]
    end
  end

  def index
  end

  def show
    @cart_items = CartItem.all
    @order = Order.new
  end

  def thanks
  end
  
  private
  
  def order_params
    params.require(:order).permit(:pay_way, :address)
  end
  

end
