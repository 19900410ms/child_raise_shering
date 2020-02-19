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
    collection do
      get "search"
    end
  end
  resources :requests, only: [:show, :new, :create, :edit, :update, :destroy] do
    member do
      get "reply"
    end
    resources :rooms, only: [:show, :new, :create] do
      resources :messages, only: [:show, :create]
    end
  end
end
