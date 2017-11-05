class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :slug, :title, :description
  has_many :stages
end
