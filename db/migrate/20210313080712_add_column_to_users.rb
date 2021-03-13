class AddColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :family_name, :string
    add_column :users, :given_name, :string
    add_column :users, :ruby_family_name, :string
    add_column :users, :ruby_given_name, :string
    add_column :users, :customer_postal_code, :integer
    add_column :users, :customer_address, :string
    add_column :users, :tel, :integer
    add_column :users, :customer_status, :string
  end
end
