class Item < ApplicationRecord
    has_many :cart_items, dependent: :destroy
    has_many :order_details
    belongs_to :genre
    
    attachment :image
    
    validates :name, presence: true, uniqueness: true
    validates :content, presence: true
    validates :price, presence: true
    
    def add_tax_price
        (self.price * 1.1).round
    end
end
