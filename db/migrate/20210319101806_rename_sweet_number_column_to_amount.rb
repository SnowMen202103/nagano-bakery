class RenameSweetNumberColumnToAmount < ActiveRecord::Migration[5.2]
  def change
    rename_column :order_details, :sweet_number, :amount
  end
end
