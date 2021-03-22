class Customer::AddressesController < ApplicationController
  before_action :authenticate_customer!
  before_action :correct_address,only: [:edit]
  
  PER = 5
  
  def index
    @addresses = Address.where(customer_id:current_customer.id).page(params[:page]).per(PER)
    @address = Address.new
  end
  
  def create
    @address = Address.new(address_params)
    @address.customer = current_customer
    if @address.save
    redirect_to request.referer
    else
      @addresses = Address.page(params[:page]).per(PER)
      render 'index'
    end
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
      redirect_to addresses_path
    else
      @addresses = Address.all
      render 'edit'
    end
  end

  def destroy
    address = Address.find(params[:id])
    address.destroy
    redirect_to request.referer
  end
  
  def correct_address
    @address = Address.find(params[:id])
    unless @address.customer.id == current_customer.id
      redirect_to addresses_path
    end
  end
  
  private
  
  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end
  
end
