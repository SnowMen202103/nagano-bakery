class Customer::ItemsController < ApplicationController

  def index
    @items = Item.all.reverse
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
    @cart_item.item_id = params[:id]
  end

end
