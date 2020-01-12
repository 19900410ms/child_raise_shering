Rails.application.routes.draw do
  devise_for :users
  root to: "accepts#index"
  resources :users, only: [:show, :edit, :update, :destroy] do
    member do
      get "deal"
    end
  end
  resources :accepts do
    member do
      get "hide"
    end
  end
  resources :requests, only: [:show, :new, :create, :edit, :update, :destroy] do
    member do
      get "reply"
    end
    resources :rooms, only: [:index, :show, :new, :create, :destroy] do
      resources :messages, only: [:create]
    end
  end
end
