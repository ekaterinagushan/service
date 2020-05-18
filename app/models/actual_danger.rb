class ActualDanger < ApplicationRecord
  has_many :product_attention
  has_many :products, through: :product_attention
  has_many :parameter
  has_many :ingredients, through: :parameter
end
