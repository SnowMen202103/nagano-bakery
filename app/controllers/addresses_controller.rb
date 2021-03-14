class AddressesController < ApplicationController
  def index
    @addresses = Address.all
    @address = Address.new
    @customer = Customer.find(params[:customer_id])
    
  end
  
  def create
    @address = Address.new(address_params)
    @address.save
    redirect_to request.referer
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  
  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end
  
end
