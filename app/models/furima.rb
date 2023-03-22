class Furima < ApplicationRecord
  belongs_to :furima
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true
end