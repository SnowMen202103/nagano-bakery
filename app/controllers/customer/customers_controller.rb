class Customer::CustomersController < ApplicationController
  def show
  end

  def edit
    @customer = Customer.find(current_customer.id)
  end
  
  def update
    customer = current_customer
    customer.update(customer_params)
    redirect_to customers_path
  end
  
  def goodbye
  end
  
  def out
    customer = current_customer
    customer.is_deleted = true
    customer.save
    reset_session
    redirect_to root_path
  end
  
  private
  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :ruby_last_name, :ruby_first_name, :postal_code, :address, :phone_number, :email)
  end
  
end
