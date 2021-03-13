class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.datetime :order_day
      t.string :order_status
      t.string :pay_way
      t.integer :postage
      t.integer :total_price
      t.string :delivery_address
      t.integer :delivery_postal_code
      t.string :address_name

      t.timestamps
    end
  end
end
