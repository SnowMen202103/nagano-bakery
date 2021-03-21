class Item < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    has_many :order_details
    belongs_to :genre
    
    attachment :image
    
    validates :image_id, presence: true
    validates :name, presence: true
    validates :content, presence: true
    validates :price, presence: true
end
