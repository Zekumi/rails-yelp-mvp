class Restaurant < ApplicationRecord
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  has_many :reviews, dependent: :destroy
  validates :category, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORIES, message: "%{value} is not included in the list" }
end
