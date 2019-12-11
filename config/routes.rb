Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: [:new, :create]
  resources :profiles, only: [:index, :new, :create, :edit, :update, :delete]
  resources :postings, only: [:index, :new, :create, :edit, :update]

  resources :messages, only: [:create]
  resources :matches, only: [:index, :show]
end
