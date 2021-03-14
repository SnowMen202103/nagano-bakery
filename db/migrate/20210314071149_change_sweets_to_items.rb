class ChangeSweetsToItems < ActiveRecord::Migration[5.0]
  def change
    rename_table :sweets, :items
  end
end
