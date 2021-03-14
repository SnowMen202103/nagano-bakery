class ChangeDatatypeItemsSellStatus2 < ActiveRecord::Migration[5.0]
  def change
    change_column :items, :sell_status, :boolean
  end
end
