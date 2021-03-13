class CreateDeliveries < ActiveRecord::Migration[5.0]
  def change
    create_table :deliveries do |t|
      t.integer :delivery_postal_code
      t.string :delivery_address
      t.string :address_name

      t.timestamps
    end
  end
end
