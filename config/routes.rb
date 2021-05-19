Rails.application.routes.draw do
  root to: "public_pages#home"

  resources :states, only: [:index, :create] do
    post "/states/:id", to: "states#update"
  end
end
