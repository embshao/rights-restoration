module Questions
  class FelonyNumsController < ApplicationController
    layout "card"

    def index
      @state = State.find(session[:state])
    end

    def create
      if params[:num].to_i > 1
        redirect_to time_from_sentence_index_path
      else
        redirect_to rights_auto_restored_path
      end
    end

    def off_board
    end
  end
end