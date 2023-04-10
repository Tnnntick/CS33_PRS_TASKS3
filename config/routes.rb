Rails.application.routes.draw do
  devise_for :mainusers
    root "home#index"

  resources :users
  resources :cards
  resources :ganres
  resources :authors
  resources :books
  resources :libraries
    # GET,POST,PUT,PATCH,DELETE
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # # get 'libraries',to: 'libraries#index'
  #    get 'libraries',to: 'libraries_controller#show'
  #   # get 'libraries',action: :show,controller:'libraries_controller'
  # Defines the root path route ("/")
  #  root "articles#index"
  # root "libraries#index"
end
