class RenameSweetIdColumnToCartItems < ActiveRecord::Migration[5.0]
  def change
    rename_column :cart_items, :sweet_id, :item_id
    rename_column :cart_items, :cart_number, :amount
  end
end
