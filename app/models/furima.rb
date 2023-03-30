class Furima < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :prefecture
  belongs_to :scheduled_delivery
  belongs_to :fee
  belongs_to :price
  belongs_to :furima
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true
  validates :furima_text, :text, presence: true
  validates :category_id, numericality: { other_than: 1 } 
end