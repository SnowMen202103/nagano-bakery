class Customer::OrdersController < ApplicationController
  before_action :order_params, only: [:cofirm]

  PER = 10

  def new
    @order = Order.new
    @addresses = Address.where(customer_id: current_customer.id)
  end

  def confirm
    @cart_items = CartItem.where(customer_id:current_customer.id)
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.postage = 800
      if params[:order][:addresses] == "my_address"
        @order.postal_code = current_customer.postal_code
        @order.address = current_customer.address
        @order.name = current_customer.last_name + current_customer.first_name
      elsif params[:order][:addresses] == "addresses"
        if params[:order][:address_id] ==  ""
          @addresses = Address.where(customer: current_customer)
          render :new
        elsif @address = Address.find(params[:order][:address_id])
          @order.postal_code = @address.postal_code
          @order.address = @address.address
          @order.name = @address.name
        end
      elsif params[:order][:addresses] == "new_address"
        @order.postal_code = params[:order][:postal_code]
        @order.address = params[:order][:address]
        @order.name = params[:order][:name]
        @ship = "1"
        unless @order.valid? == true
          @addresses = Address.where(customer: current_customer)
          render :new
        end
      end
  end

  def create
    @order = current_customer.orders.new(order_params)
    @order.save
    redirect_to thanks_orders_path

    if params[:order][:ship] == "1"
      current_customer.addresses.create(address_params)
    end

    @cart_items = CartItem.where(customer_id:current_customer.id)
    @cart_items.each do |cart_item|
    OrderDetail.create(
      item_id:      cart_item.item.id,
      order_id:     @order.id,
      amount:       cart_item.amount,
      in_tax_price: cart_item.item.price * 1.1
      )
    end
    @cart_items.destroy_all
  end

  def index
    @orders = current_customer.orders.page(params[:page]).per(PER)
  end

  def show
    @order = current_customer.orders.find(params[:id])
    @order_details = @order.order_details.page(params[:page]).per(5)
    @order.postage = 800
  end

  def thanks
  end

  private

  def order_params
    params.require(:order).permit(:pay_way, :address, :postal_code, :name, :total_price)
  end

  def address_params
    params.require(:order).permit(:address, :postal_code, :name)
  end


end
