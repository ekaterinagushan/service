class Product < ApplicationRecord
  belongs_to :category

  has_many :Structures
  has_many :Ingredients, thought ::Structures
end
