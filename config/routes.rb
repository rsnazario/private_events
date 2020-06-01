Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
  resources :events, only: [:index, :new, :create, :show]
  resources :attendances, only: [:create]
  root "events#index"
end
