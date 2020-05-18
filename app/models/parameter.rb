class Parameter < ApplicationRecord
  belongs_to  :ingredient
  belongs_to :actual_danger
end
