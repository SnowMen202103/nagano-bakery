class ChangeDatatypeOrdersOrderStatus < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :order_status, :integer
    change_column :orders, :pay_way, :integer
    change_column :orders, :postal_code, :string
  end
end
