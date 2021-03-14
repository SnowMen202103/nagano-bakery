class ChangeDatatypeMakingStatusOfOrderDetails < ActiveRecord::Migration[5.0]
  def change
    change_column :order_details, :making_status, :integer
  end
end
