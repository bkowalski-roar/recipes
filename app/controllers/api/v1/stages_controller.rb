module Api
  module V1
    class StagesController < ApplicationController

      def show
        render json: Stage.find_by(id: params[:id])
      end

    end
  end
end
