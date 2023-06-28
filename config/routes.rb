Rails.application.routes.draw do
  root 'pictures#index'
  get 'sessions/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit]
  resources :pictures do
    collection do
      post :confirm
    end
  end
end