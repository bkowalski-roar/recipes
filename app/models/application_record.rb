class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def generate_slug seed
    (seed + ',' + [*('a'..'z'),*('0'..'9')].shuffle[0,8].join).parameterize
  end
end
