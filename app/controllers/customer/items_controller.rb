class Customer::ItemsController < ApplicationController

  PER = 12

  def index
    @items = Item.page(params[:page]).per(PER)
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
    @cart_item.item_id = params[:id]
  end

end
