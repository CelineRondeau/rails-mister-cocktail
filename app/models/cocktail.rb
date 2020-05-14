class Cocktail < ApplicationRecord
  NAME = [ "Mint Julep", "Whiskey Sour", "Mojito" ]
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  # A cocktail has a name (e.g. "Mint Julep", "Whiskey Sour", "Mojito")
  # A cocktail must have a unique name.
  validates :name, presence: true, uniqueness: true, inclusion: { in: NAME }
  # A cocktail has many doses
  # A cocktail has many ingredients through doses
  # When you delete a cocktail, you should delete associated doses (but not the ingredients as they can be linked to other cocktails).
end
