class AddColumnsToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :last_name, :string
    add_column :customers, :first_name, :string
    add_column :customers, :ruby_last_name, :string
    add_column :customers, :ruby_first_name, :string
    add_column :customers, :phone_number, :string
    add_column :customers, :postal_code, :string
    add_column :customers, :is_deleted, :boolean, default: false, null: false
  end
end
