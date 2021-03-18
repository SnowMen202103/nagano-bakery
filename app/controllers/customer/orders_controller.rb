class Customer::OrdersController < ApplicationController
  before_action :order_params, only: [:cofirm]

  def new
    @order = Order.new
    
  end
  
  def create
    @order = Order.new(order_params)
    @cart_items = CartItem.all
    
  end
  
  def confirm
    @cart_items = CartItem.where(customer_id:current_customer.id)
    @order = Order.find_by(customer_id:current_customer.id)
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
  end
  

end
