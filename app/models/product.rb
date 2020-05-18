class Product < ApplicationRecord
  belongs_to :category

  has_many :structures
  has_many :ingredients, through: :structures

  has_many :product_attention
  has_many :actual_danger, through: :product_attention

end
