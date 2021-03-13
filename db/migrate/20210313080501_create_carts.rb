class CreateCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :carts do |t|
      t.integer :user_id
      t.integer :sweet_id
      t.integer :cart_number

      t.timestamps
    end
  end
end
