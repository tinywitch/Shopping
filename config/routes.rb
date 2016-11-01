Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users

  resources :users, only: [:show]
  get '/show' => 'products#show'
end
