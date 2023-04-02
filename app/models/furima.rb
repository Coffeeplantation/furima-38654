class Furima < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :prefecture
  belongs_to :scheduled_delivery
  belongs_to :fee
  belongs_to :user
  has_one_attached :image


  validates :image, presence: true
  validates :item, presence: true
  validates :item_text, presence: true
  validates :condition_id, numericality: { other_than: 1 } 
  validates :category_id, numericality: { other_than: 1 } 
  validates :prefecture_id, numericality: { other_than: 1 } 
  validates :scheduled_delivery_id, numericality: { other_than: 1 } 
  validates :fee_id, numericality: { other_than: 1 } 
end