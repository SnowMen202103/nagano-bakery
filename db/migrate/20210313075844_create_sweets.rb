class CreateSweets < ActiveRecord::Migration[5.0]
  def change
    create_table :sweets do |t|
      t.integer :genre_id
      t.string :name
      t.text :content
      t.string :image_id
      t.enum :sell_status
      t.integer :price

      t.timestamps
    end
  end
end
