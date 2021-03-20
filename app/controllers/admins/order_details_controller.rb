class Admins::OrderDetailsController < ApplicationController

  def update
    @order_detail = OrderDetail.find(params[:id])
    @order_detail.update(order_detail_params)
    redirect_to admins_order_path(@order_detail.order)

    # @order_details = @order_detail.order.order_details
    # @order = Order.find(params[:id])
    #   if @order_details.where(making_status: '製作中').any?
    #     @order.update(order_status: 2)
    #   else
    #     @order_detail.update(order_detail_params)
    #   end
  end


  private

  def order_detail_set
    @order_detail = OrderDetail.find(params[:id])
  end

  def order_detail_params
    params.require(:order_detail).permit(:making_status)
  end

end
