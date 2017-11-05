class Step < ApplicationRecord
  belongs_to :stage

  validates :content, presence: true
end
