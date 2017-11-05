module Api
  module V1
    class RecipesController < ApplicationController

      def index
        render json: Recipe.visible, each_serializer: RecipePreviewSerializer
      end

      def show
        render json: Recipe.visible.find_by(slug: params[:slug])
      end

      def create
        recipe = Recipe.create!(create_recipe_params)
        render json: recipe
      end

      private

      def create_recipe_params
        params.permit(:title, :description)
      end

    end
  end
end
