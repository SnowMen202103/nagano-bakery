class RemoveOrderDayToOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :order_day, :string
  end
end
