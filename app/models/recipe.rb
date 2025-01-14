class Recipe < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }

  # Associations
  has_many :bookmarks
end
