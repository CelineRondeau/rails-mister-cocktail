class Dose < ApplicationRecord
  # A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique
  validates :name, presence: true, uniqueness: true
  validates :description, length: { minimum: 20 }
  belongs_to :cocktail
  belongs_to :ingredient
end