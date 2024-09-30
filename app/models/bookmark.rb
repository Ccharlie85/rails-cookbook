class Bookmark < ApplicationRecord
  belongs_to :recipe
  belongs_to :category

  validates :recipe_id, uniqueness: {scope:  :category_id}
  validates :comment, lenght: {minimum: 6}

end
