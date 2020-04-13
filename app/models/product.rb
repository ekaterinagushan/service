class Product < ApplicationRecord
  belongs_to :category

  has_many :structures
  has_many :ingredients, through: :structures
end
