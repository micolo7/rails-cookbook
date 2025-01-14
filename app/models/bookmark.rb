class Bookmark < ApplicationRecord
  # Validations
  validates :comment, length: { minimum: 6 }
  # Confirming associations are valid
  validates :recipe_id, uniqueness: {scope: :category_id}
  belongs_to :recipe
  belongs_to :category
end
