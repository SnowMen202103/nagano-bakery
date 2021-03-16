class Admins::ItemsController < ApplicationController
  
  before_action :item_set, except:[:new, :create , :index]
  
  def new
    @item = Item.new
  end
  
  def create
    item = Item.new(item_params)
    item.save
    redirect_to admins_item_path(item)
  end
  
  def index
    @items = Item.all
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    @item.update(item_params)
    redirect_to admins_item_path(@item)
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name, :content, :genre_id, :image, :price, :sell_status)
  end
  
  def item_set
    @item = Item.find(params[:id])
  end
  
end
