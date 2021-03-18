class Customer::OrdersController < ApplicationController

  def new
    @order = Order.new
    
  end
  
  def create
    @cart_items = CartItem.all
    
  end
  
  def confirm
  end

  def index
  end

  def show
    @cart_items = CartItem.all
    @order = Order.new
  end

  def thanks
  end

end
