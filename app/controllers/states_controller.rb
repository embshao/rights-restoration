class StatesController < ApplicationController
  def index
    render layout: "card"
  end

  def create
    @state = State.find(params[:state])

    if @state && @state.can_file?
      redirect_to on_board_path(id: @state.id)
    else
      redirect_to off_board_path
    end
  end

  def off_board
    render layout: "card"
  end

  def on_board
    @state = State.find(params[:id])

    render layout: "transition_card"
  end
end