class Customer::HomesController < ApplicationController
  def top
    @items = Item.last(4).reverse
  end

  def about
  end
  
end
