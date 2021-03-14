class RenameDeliveryAddressColumnToOrders < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :delivery_address, :address
    rename_column :orders, :delivery_postal_code, :postal_code
    rename_column :orders, :address_name, :name
  end
end
