Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'
  resources :prototypes, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end


