class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         validates :nickname, presence: true
         validates :password, presence: true, length: { minimum: 6 }
         validates :encrypted_password, presence: true, length: { minimum: 6 }
         validates :email, presence: true, uniqueness: true
         validates :last_name, presence: true
         validates :family_name, presence: true
         validates :last_name_kana, presence: true
         validates :family_name_kana, presence: true
         validates :birth_date, presence: true
         
end
