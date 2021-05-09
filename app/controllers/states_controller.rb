class StatesController < ApplicationController
  def index
  end

  def update
    if params[:state] = "Arizona"
      redirect_to some_path
    else
      redirect_to offboard_path
    end
  end
end