class Admins::OrderDetailsController < ApplicationController
  before_action :authenticate_customer!

  def update
    @order_detail         = OrderDetail.find(params[:id])
    @order_detail.update(order_detail_params)
    @order_details        = @order_detail.order.order_details.all
    @order                = Order.find(@order_detail.order_id)
    @order_details_status = @order_details.pluck(:making_status)
      if @order_details.exists?(making_status: '製作中')
         @order.update(order_status: 2)
      elsif @order_details_status.all?{|n| n == '製作完了'}
         @order.update(order_status: 3)
      end
    redirect_to admins_order_path(@order_detail.order)
  end


  private

  def order_detail_set
    @order_detail = OrderDetail.find(params[:id])
  end

  def order_detail_params
    params.require(:order_detail).permit(:making_status)
  end

end
