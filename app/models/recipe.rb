class Recipe < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :image_url, format: { with: /\Ahttps?:\/\/.+\.(jpg|jpeg|png|gif)\z/i, message: "must be a valid image URL" }
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
end

class Recipe < ApplicationRecord
  # Associations
  has_many :bookmarks, dependent: :destroy
  has_many :categories, through: :bookmarks
end
