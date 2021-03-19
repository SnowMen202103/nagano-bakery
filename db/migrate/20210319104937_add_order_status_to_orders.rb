class AddOrderStatusToOrders < ActiveRecord::Migration[5.2]
  def change
    change_column_default :orders, :order_status, default: 0, null: false
  end
end
