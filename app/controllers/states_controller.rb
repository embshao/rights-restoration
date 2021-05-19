class StatesController < ApplicationController
  def index; end

  def create
    @state = State.find(params[:state])

    if @state && @state.can_file?
      redirect_to on_board_path(id: @state.id)
    else
      redirect_to off_board_path
    end
  end

  def off_board; end

  def on_board; end
end