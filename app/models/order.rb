  class Order < ApplicationRecord
    belongs_to :user
    belongs_to :furima
    has_one :address
  end