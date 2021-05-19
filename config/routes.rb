Rails.application.routes.draw do
  root to: "public_pages#home"

  resources :states, only: [:index, :create]
  get "/off_board", to: "states#off_board", as: :off_board
  get "/states/:id", to: "states#on_board", as: :on_board
end
