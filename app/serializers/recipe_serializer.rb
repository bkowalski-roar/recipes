class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :created_at
  has_many :stages, serializer: StagePreviewSerializer
end
