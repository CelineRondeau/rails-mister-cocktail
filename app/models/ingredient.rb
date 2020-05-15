class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  # An ingredient must have a unique name
  # An ingredient has a name (e.g. "lemon", "ice", "mint leaves")
  validates :name, presence: true, uniqueness: true
  # An ingredient has many doses
end
