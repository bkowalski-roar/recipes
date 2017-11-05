module Api
  module V1
    class RecipesController < ApplicationController

      def index
        render json: Recipe.all, each_serializer: RecipePreviewSerializer
      end

      def show
        render json: Recipe.find_by(slug: params[:slug])
      end

    end
  end
end
