class Ingredient < ApplicationRecord
  has_many :structures
  has_many :products, through: :Structures
  has_many :parameter
  has_many :actual_dangers, through: :parameter
end
