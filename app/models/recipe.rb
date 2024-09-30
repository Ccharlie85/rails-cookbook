class Recipe < ApplicationRecord
  has_many :bookmarks
  has_many :categories

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :rating, numericality: {in: 0..10}

end
