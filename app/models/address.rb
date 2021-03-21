class Address < ApplicationRecord
    belongs_to :customer
    
    def view_address_and_name
        "〒" + self.postal_code + " " + self.address + " " + self.name
    end
    
    validates :postal_code, presence: true, format: {with: /\A\d{7}\z/ }
    validates :address, presence: true
    validates :name, presence: true

end
