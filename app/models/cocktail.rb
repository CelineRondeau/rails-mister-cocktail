class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  # A cocktail has a name (e.g. "Mint Julep", "Whiskey Sour", "Mojito")
  # A cocktail must have a unique name.
  validates :name, presence: true, uniqueness: true
  # A cocktail has many doses
  # A cocktail has many ingredients through doses
end
