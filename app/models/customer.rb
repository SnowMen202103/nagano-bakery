class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :family_name , presence: true
  validates :given_name , presence: true
  validates :ruby_family_name , presence: true
  validates :ruby_given_name , presence: true
  validates :postal_code , presence: true
  validates :address , presence: true
  validates :tel, presence: true
end
