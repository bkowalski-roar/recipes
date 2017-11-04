class Recipe < ApplicationRecord
  validates :title, presence: true
  validates :slug, presence: true

  def generate_slug
    (title + ',' + [*('a'..'z'),*('0'..'9')].shuffle[0,8].join).parameterize
  end

end
