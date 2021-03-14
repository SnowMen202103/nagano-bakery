class ChangeAddressesColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :addresses, :delivery_postal_code, :integer
    remove_column :addresses, :delivery_address, :string
    remove_column :addresses, :address_name, :string
    add_column :addresses, :customer_id, :integer
    add_column :addresses, :postal_code, :string
    add_column :addresses, :address, :string
    add_column :addresses, :name, :string
    
  end
end
