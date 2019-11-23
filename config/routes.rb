Rails.application.routes.draw do
  devise_for :users
  root to: "accepts#index"
  resources :users, only: [:show, :edit, :update] do
    resources :comments, only: [:index, :new, :create]
  end
  resources :accepts, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :requests, only: [:show, :new, :create, :destroy]
end
