Rails.application.routes.draw do
  root to: "posts#index"

  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :edit, :update]
end
