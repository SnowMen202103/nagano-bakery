class ChangeAdminsColumns < ActiveRecord::Migration[5.0]
  def change
    remove_column :admins, :manager_email, :string
    remove_column :admins, :manager_password, :string
    add_column :admins, :email, :string
    add_column :admins, :password, :string
  end
end
