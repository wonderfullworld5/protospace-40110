Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes
  resources :prototypes, only: [:new, :create]
end


