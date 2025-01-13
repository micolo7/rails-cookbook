class Bookmark < ApplicationRecord
  # Validations
  validates :comment, length: { maximum: 250 }
  # Confirming associations are valid
  validates :recipe_id, presence: true
  belongs_to :recipe
  validates :category_id, presence: true
  belongs_to :category
end

class Bookmark < ApplicationRecord
  # Associations
  belongs_to :recipe
  belongs_to :category
end
