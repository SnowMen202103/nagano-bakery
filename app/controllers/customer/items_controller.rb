class Customer::ItemsController < ApplicationController

  PER = 12

  def index

    @items  = Item.page(params[:page]).per(PER)
    @genres = Genre.all
  end

  def show
    @item              = Item.find(params[:id])
    @cart_item         = CartItem.new
    @cart_item.item_id = params[:id]
  end

  def search
    @genres = Genre.all
    @genre  = Genre.find(params[:id])
    @items  = @genre.items.page(params[:page]).per(PER)
  end

end
