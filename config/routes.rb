Rails.application.routes.draw do
  devise_for :users
  root to: "accepts#index"
  resources :users, only: [:show, :edit, :update, :destroy] do
    member do
      get "deal"
    end
  end
  resources :accepts
  resources :requests, only: [:show, :new, :create, :edit, :update, :destroy] do
    member do
      get "reply"
    end
  end

end
