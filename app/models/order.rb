  class Order < ApplicationRecord
    belongs_to :user
    belongs_to :address
    has_one :payment
  end