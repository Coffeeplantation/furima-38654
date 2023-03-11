class Furima < ApplicationRecord
  belongs_to :user
         validates :nickname, presence: true
         validates :last_name, presence: true
         validates :family_name, presence: true
         validates :last_name_kana, presence: true
         validates :first_name_kana, presence: true
         validates :birth_date, presence: true

end