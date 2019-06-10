Rails.application.routes.draw do
  devise_for :users
  root  'letters#index'
  resources :letters, only: [:new]
end
