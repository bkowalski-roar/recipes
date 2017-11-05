class Stage < ApplicationRecord
  belongs_to :recipe
  has_many :steps
  has_many :ingredient_stages
  has_many :ingredients, through: :ingredient_stages

  validates :title, presence: true
end
