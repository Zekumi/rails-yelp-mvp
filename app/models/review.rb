class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: (0..5), message: "%{value} is not included in the rating list" }
  validates :rating, numericality: { only_integer: true }
end
