Rails.application.routes.draw do
  root to: "public_pages#home"
  get "/faq", to: "public_pages#faq"
  get "/resources", to: "public_pages#resources"

  resources :off_boards, only: [:index]

  scope module: 'questions' do
    resources :states, only: [:index, :create], path: "state-of-conviction"
    resources :overviews, only: [:index], path: "application-overview"
    resources :felony_nums, only: [:index, :create], path: "number-of-felonies"
    resources :clients, only: [:new, :create], path: "name"
    resources :client_addresses, only: [:edit, :update], path: "address"
    get "/rights-auto-restored", to: "felony_nums#off_board"
  end
end