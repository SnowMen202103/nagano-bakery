class Customer < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :last_name , presence: true
  validates :first_name , presence: true
  validates :ruby_last_name , presence: true, format: {with: /\A[ァ-ヶー－]+\z/ }
  validates :ruby_first_name , presence: true, format: {with: /\A[ァ-ヶー－]+\z/ }
  validates :postal_code , presence: true, format: {with: /\A\d{7}\z/ }
  validates :address , presence: true
  validates :phone_number, presence: true, format: { with: /\A\d{10,11}\z/ }
  validates :email, format: {with: /\A\S+@\S+\.\S+\z/ }
  
  has_many :orders, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  
  def active_for_authentication?
    super && (self.is_deleted == false)
  end
  
end
