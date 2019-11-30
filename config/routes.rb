Rails.application.routes.draw do
  devise_for :users
  root to: "accepts#index"
  resources :users, only: [:show, :edit, :update, :destroy]
  resources :accepts
  resources :requests, only: [:show, :new, :create, :edit, :update, :destroy]
end
