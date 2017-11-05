module Api
  module V1
    class StepsController < ApplicationController

      def index
        render json: Stage.find_by(id: params[:stage_id]).steps
      end

    end
  end
end
