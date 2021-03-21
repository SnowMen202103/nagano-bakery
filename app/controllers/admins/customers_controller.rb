class Admins::CustomersController < ApplicationController
  
  before_action :customer_set, only:[:show, :edit, :update]
  
  PER = 10
  
  def index
    @customers = Customer.page(params[:page]).per(PER)
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @customer.update(customer_params)
    redirect_to admins_customer_path(@customer)
    else
      render 'edit'
    end
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :ruby_last_name, :ruby_first_name, :postal_code, :address, :phone_number, :email, :is_deleted)
  end
  
  def customer_set
    @customer = Customer.find(params[:id])
  end
  
end
