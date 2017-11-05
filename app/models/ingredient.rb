class Ingredient < ApplicationRecord
  has_many :ingredient_stages
  has_many :stages, through: :ingredient_stages
end
