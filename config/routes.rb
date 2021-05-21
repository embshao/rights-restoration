Rails.application.routes.draw do
  root to: "public_pages#home"
  get "/faq", to: "public_pages#faq"
  get "/resources", to: "public_pages#resources"

  resources :states, only: [:index, :create]
  get "/off_board", to: "states#off_board", as: :off_board #off_board/:id
  get "/states/:id", to: "states#on_board", as: :on_board #states/:id or just /az

  # screener questions
  # get "/az/"
end
