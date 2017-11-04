class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :slug, :title, :description
end
