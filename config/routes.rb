Rails.application.routes.draw do
  devise_for :users
    root to: "furimas#index"
  resources :furimas do
end
  resources :users, only: :show
end