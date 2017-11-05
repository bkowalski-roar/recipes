class Recipe < ApplicationRecord
  has_many :stages
  has_many :ingredients, through: :stages

  validates :title, presence: true
  validates :slug, presence: true

  scope :visible, -> { where(published: true) }

  def generate_slug
    (title + ',' + [*('a'..'z'),*('0'..'9')].shuffle[0,8].join).parameterize
  end

end
