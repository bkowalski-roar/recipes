class IngredientStage < ApplicationRecord
  belongs_to :ingredient
  belongs_to :stage
end