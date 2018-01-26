Rails.application.routes.draw do
  root 'pages#index'
  resources :sessions, only: %i[new create destroy]
  resources :users
  resources :settings, only: [:index]
end
