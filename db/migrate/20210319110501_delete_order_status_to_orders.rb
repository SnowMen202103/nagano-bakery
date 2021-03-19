class DeleteOrderStatusToOrders < ActiveRecord::Migration[5.2]
  def change
        remove_column :orders, :order_status, :integer
        add_column :orders, :order_status, :integer, default: 0, null: false
  end
end
