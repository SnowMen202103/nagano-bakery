class Customers::CustomersController < ApplicationController
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
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customer_path(@customer)
  end
  
  
  def goodbye
  end
  
  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :ruby_last_name, :ruby_first_name, :postal_code, :address, :phone_number, :email)
  end
  
end
