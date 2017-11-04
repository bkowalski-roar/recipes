class Recipe < ApplicationRecord

  def generate_slug
    (title + ',' + [*('a'..'z'),*('0'..'9')].shuffle[0,8].join).parameterize
  end

end
