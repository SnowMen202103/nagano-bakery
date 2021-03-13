class CreateOrderDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :order_details do |t|
      t.integer :in_tax_price
      t.integer :sweet_number
      t.string :making_status

      t.timestamps
    end
  end
end
