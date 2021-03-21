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

    if order_params[:order_status] == '入金確認'
      @order.update(order_params)
      @order_details = @order.order_details
      @order_details.update(making_status: 1)
    else
      @order.update(order_params)
    end
      redirect_to admins_order_path
  end

  private
  def order_params
    params.require(:order).permit(:order_status)
  end

end
