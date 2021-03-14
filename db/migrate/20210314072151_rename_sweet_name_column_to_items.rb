class RenameSweetNameColumnToItems < ActiveRecord::Migration[5.0]
  def change
    rename_column :items, :sweet_name, :name
    rename_column :items, :image, :image_id
    rename_column :items, :no_tax_price, :price
  end
end
