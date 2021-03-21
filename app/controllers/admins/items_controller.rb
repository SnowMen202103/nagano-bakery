class Admins::ItemsController < ApplicationController
  
  PER = 10
  
  before_action :item_set, except:[:new, :create , :index]
  
  def new
    @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admins_item_path(item)
    else
      render 'new'
      @item = Item.new
    end
  end
  
  def index
    # @items = Item.all
    @items = Item.page(params[:page]).per(PER)
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @item.update(item_params)
      redirect_to admins_item_path(@item)
    else
      render 'edit'
    end
  end
  
  private
  
  def item_params
    params.require(:item).permit(:name, :content, :genre_id, :image, :price, :sell_status)
  end
  
  def item_set
    @item = Item.find(params[:id])
  end
  
end
