class ChangeManagersToAdmins < ActiveRecord::Migration[5.0]
  def change
    rename_table :managers, :admins
  end
end
