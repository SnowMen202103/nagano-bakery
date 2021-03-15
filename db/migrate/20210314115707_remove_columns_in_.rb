class RemoveColumnsIn < ActiveRecord::Migration[5.0]
  def change
    remove_column :admins, :password, :string
    remove_column :admins, :email, :string
  end
end
