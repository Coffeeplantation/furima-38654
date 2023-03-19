class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         validates :nickname, presence: true
         validates :password, presence: true
         validates :encrypted_password, presence: true
         validates :email, presence: true
         validates :last_name, presence: true
         validates :family_name, presence: true
         validates :last_name_kana, presence: true
         validates :family_name_kana, presence: true
         validates :birth_date, presence: true
         
end