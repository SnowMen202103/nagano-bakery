class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  def after_sign_in_path_for(resource)
    new_registration_path(resource_name)
  end
         
  validates :family_name, presence: true
  validates :given_name, presence: true
  validates :ruby_family_name, presence: true
  validates :ruby_given_name, presence: true
  validates :customer_postal_code, presence: true
  validates :customer_address, presence: true
  validates :tel, presence: true
  
end
