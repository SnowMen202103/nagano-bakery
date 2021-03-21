class Admins::OrderController < ApplicationController
  
  PER = 10

  def index
    @orders = Order.page(params[:page]).per(PER)

  end

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def order_params
    params.require(:order).permit(:order_status)
  end

end
