module Api
  module V1
    class IngredientsController < ApplicationController

      def index
        render json: Stage.find_by(id: params[:stage_id]).ingredients, each_serializer: IngredientSerializer
      end

    end
  end
end
