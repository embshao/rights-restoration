module Questions
  class FelonyNumsController < ApplicationController
    layout "card"

    def index
    end

    def create
      params[:num]
    end
  end
end