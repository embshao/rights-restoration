module Questions
  class StatesController < ApplicationController
    def index
      render layout: "card"
    end

    def create
      @state = State.find(params[:state])

      if @state && @state.can_file?
        redirect_to overviews_path
      else
        redirect_to off_boards_path
      end
    end

    def off_board
      render layout: "card"
    end
  end
end