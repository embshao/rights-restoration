module Questions
  class FelonyNumsController < ApplicationController
    layout "card"

    def index
      @state = State.find(session[:state])
    end

    def create
    end
  end
end