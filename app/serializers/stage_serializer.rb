class StageSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :steps, serializer: StepPreviewSerializer
end
