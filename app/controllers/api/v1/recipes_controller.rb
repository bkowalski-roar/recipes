module Api
  module V1
    class RecipesController < ApplicationController

      def index
        render json: Recipe.visible, each_serializer: RecipePreviewSerializer
      end

      def show
        render json: Recipe.visible.find_by(slug: params[:slug])
      end

    end
  end
end
