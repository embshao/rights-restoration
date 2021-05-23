Rails.application.routes.draw do
  root to: "public_pages#home"
  get "/faq", to: "public_pages#faq"
  get "/resources", to: "public_pages#resources"

  resources :off_boards, only: [:index]

  scope module: 'questions' do
    resources :states, only: [:index, :create]
    resources :overviews, only: [:index]
    resources :felony_nums, only: [:index, :create]
  end
end