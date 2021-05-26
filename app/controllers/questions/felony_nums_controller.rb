module Questions
  class FelonyNumsController < ApplicationController
    layout "card"

    def index
      @state = State.find(session[:state])
    end

    def create
      if params[:num].to_i > 1
        redirect_to new_client_path
      else
        redirect_to off_board_num_path
      end
    end

    def off_board
    end
  end
end