class ChangeItemsColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :sell_status, :boolean
    add_column :items, :sell_status, :boolean, default: true, null: false
  end
end
