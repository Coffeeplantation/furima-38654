Rails.application.routes.draw do
  devise_for :users
    root to: "furimas#index"
  resources :furimas do
  resources :orders, only: [:index, :new, :create]
end
  resources :users, only: :show
end