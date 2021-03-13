class CreateSweets < ActiveRecord::Migration[5.0]
  def change
    create_table :sweets do |t|
      t.integer :genre_id
      t.string :sweet_name
      t.text :content
      t.string :image
      t.string :sell_status
      t.integer :no_tax_price

      t.timestamps
    end
  end
end
