class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

      has_many :cookings

      with_options presence: true do
        validates :nickname 
        validates :password_confirmation
      end
        validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,}\z/i }, confirmation: true  
        validates :email, uniqueness: true
end
