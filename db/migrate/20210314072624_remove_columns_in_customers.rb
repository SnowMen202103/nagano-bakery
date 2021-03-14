class RemoveColumnsInCustomers < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :family_name, :string
    remove_column :customers, :given_name, :string
    remove_column :customers, :ruby_family_name, :string
    remove_column :customers, :ruby_given_name, :string
    remove_column :customers, :postal_code, :integer
    remove_column :customers, :tel, :string
    remove_column :customers, :status, :string
  end
end
