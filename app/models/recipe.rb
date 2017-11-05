class Recipe < ApplicationRecord
  has_many :stages
  has_many :ingredients, through: :stages

  #TODO refactor
  before_validation(on: :create) do
    self.slug ||= generate_slug(title)
  end

  validates :title, presence: true
  validates :slug, presence: true

  scope :visible, -> { where(published: true) }

end
