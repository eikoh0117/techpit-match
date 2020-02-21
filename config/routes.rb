Rails.application.routes.draw do
  devise_for :users
  # get 'top/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index]
  resources :reactions, only: [:create]
  resources :matching, only: [:index]
  root "top#index"
end
