class ChangeDeliveriesToAddresses < ActiveRecord::Migration[5.0]
  def change
    rename_table :deliveries, :addresses
  end
end
