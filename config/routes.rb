Rails.application.routes.draw do
  root 'pages#index'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
