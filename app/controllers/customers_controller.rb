class CustomersController < ApplicationController
  def show
    @customers = Customer.all
    @customer = Customer.find(params[:id])
  end

  def index
  end

  def edit
    @customer = Customer.find(params[:id])
  end
  
  def update
  end
  
  
  def goodbye
  end
end
