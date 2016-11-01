Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users

  resources :users, only: [:show]

  resources :products, only: [:show]
end
