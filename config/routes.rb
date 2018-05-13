Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'pages#index'
  resources :sessions, only: %i[new create destroy]
  resources :users
  resources :settings, only: [:index]
end
