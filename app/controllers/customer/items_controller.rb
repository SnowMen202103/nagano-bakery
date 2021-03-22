class Customer::ItemsController < ApplicationController

  PER = 12

  def index
    on_sale = Item.where(sell_status: true)
    @items = on_sale.page(params[:page]).per(PER)
  end

  def show
    @item = Item.find(params[:id])
    if @item.sell_status == false
      redirect_to items_path
    else
      @cart_item = CartItem.new
      @cart_item.item_id = params[:id]
    end
  end

end
