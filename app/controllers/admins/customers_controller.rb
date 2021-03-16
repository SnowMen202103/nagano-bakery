class Admins::CustomersController < ApplicationController
  
  before_action :customer_set, only:[:show, :edit, :update]
  
  def index
    @customers = Customer.all
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    @customer.update(customer_params)
    redirect_to admins_customer_path(@customer)
  end
  
  private
  
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :ruby_last_name, :ruby_first_name, :postal_code, :address, :phone_number, :email, :is_deleted)
  end
  
  def customer_set
    @customer = Customer.find(params[:id])
  end
  
end
