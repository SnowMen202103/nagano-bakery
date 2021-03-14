class ChangeCartsToCartItems < ActiveRecord::Migration[5.0]
  def change
    rename_table :carts, :cart_items
  end
end
