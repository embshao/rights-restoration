module Questions
  class OverviewsController < ApplicationController
    layout "transition_card"

    def index
      @state = State.find(session[:state])
    end
  end
end