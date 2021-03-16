class Admins::OrderDetailsController < ApplicationController
  def index
  end
  
  def show
  end
  
  def update
  end
  
  private
  
  def order_detail_set
    @order_detail = OrderDetail.find(params[:id])
  end
  
end
