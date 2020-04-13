class Ingredient < ApplicationRecord
  has_many :Structures
  has_many :Product, thought ::Structures
end
