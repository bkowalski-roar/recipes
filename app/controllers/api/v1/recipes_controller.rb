module Api
  module V1
    class RecipesController < ApplicationController

      def index
        render json: Recipe.all
      end

    end
  end
end
