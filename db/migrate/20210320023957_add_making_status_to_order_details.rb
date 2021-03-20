class AddMakingStatusToOrderDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :order_details, :making_status, :integer
    remove_column :orders, :making_status, :integer
    add_column :order_details, :making_status, :integer, default: 0, null: false
  end
end
