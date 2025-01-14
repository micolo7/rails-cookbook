class Category < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true

  # Associations
  has_many :bookmarks, dependent: :destroy
  has_many :recipes, through: :bookmarks
end
