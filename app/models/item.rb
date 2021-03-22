class Item < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    has_many :order_details
    belongs_to :genre
    
    attachment :image
    
    validates :name, presence: true, uniqueness: true
    validates :content, presence: true
    validates :price, presence: true
end
