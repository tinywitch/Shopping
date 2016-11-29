Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users

  resources :users, only: [:show]

  resources :products do
    resources :orders, only: [:show, :create, :delete]
  end

  resources :categories, only: [:show]
  resources :orders, only: [ :index, :update]
  resources :products, only: [:show, :update]

  get 'search' => "pages#search"
end
