class Customers::AddressesController < ApplicationController
  before_action :set_customer
  
  def index
    @addresses = Address.all
    @address = Address.new
  end
  
  def create
    @address = Address.new(address_params)
    @address.save
    redirect_to request.referer
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    @address.update(address_params)
    redirect_to customer_addresses_path
  end

  def destroy
    address = Address.find(params[:id])
    address.destroy
    redirect_to request.referer
  end
  
  private
  
  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end
  
  def set_customer
    @customer = Customer.find(params[:customer_id])
  end
end
