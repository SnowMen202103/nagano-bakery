class CreateManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :managers do |t|
      t.string :manager_email
      t.string :manager_password

      t.timestamps
    end
  end
end
