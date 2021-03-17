class Customer::OrdersController < ApplicationController

  def index
  end

  def show
    @cart_items = CartItem.all
    @order = Order.new
  end

  def thanks
  end

end
