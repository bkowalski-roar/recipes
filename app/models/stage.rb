class Stage < ApplicationRecord
  belongs_to :recipe
  has_many :steps

  validates :title, presence: true
end
