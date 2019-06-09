Rails.application.routes.draw do
  devise_for :users
  root  'letters#index'
  
end
