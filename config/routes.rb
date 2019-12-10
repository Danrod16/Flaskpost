Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: [:new, :create]
  resources :applications, only: [:index, :new, :create, :edit, :update, :delete]
  resources :postings, only: [:index, :new, :create, :edit, :update, :delete]

  resources :messages, only: [:create]
  resources :matches, only: [:index, :show, :create, :update]
end
