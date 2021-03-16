class Customers::OrderDetailsController < ApplicationController
  def index
    @customer = Customer.find(params[:customer_id])
    @order_detail = OrderDetail.find(params[:id])
  end

  def show
  end
end
