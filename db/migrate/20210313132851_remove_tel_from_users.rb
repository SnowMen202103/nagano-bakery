class RemoveTelFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :tel, :integer
  end
end
