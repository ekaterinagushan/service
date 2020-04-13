class Ingredient < ApplicationRecord
  has_many :structures
  has_many :products, through: :Structures
end
