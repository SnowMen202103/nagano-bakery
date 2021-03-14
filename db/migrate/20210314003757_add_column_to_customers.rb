class AddColumnToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :family_name, :string
    add_column :customers, :given_name, :string
    add_column :customers, :ruby_family_name, :string
    add_column :customers, :ruby_given_name, :string
    add_column :customers, :postal_code, :integer
    add_column :customers, :address, :string
    add_column :customers, :tel, :string
    add_column :customers, :status, :string
  end
end
