module Questions
  class OverviewsController < ApplicationController
    layout "transition_card"

    def index
      @state = State.find(1)
    end
  end
end