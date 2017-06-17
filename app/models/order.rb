class Order < ApplicationRecord
  belongs_to :food_item
  has_many :food_items
end
