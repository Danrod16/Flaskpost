Rails.application.routes.draw do
  get 'profiles/index'
  get 'profiles/new'
  get 'profiles/create'
  get 'profiles/edit'
  get 'profiles/update'
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: [:new, :create]
  resources :profiles, only: [:index, :new, :create, :edit, :update, :delete]
  resources :postings, only: [:index, :new, :create, :edit, :update, :delete]

  resources :messages, only: [:create]
  resources :matches, only: [:index, :show, :create, :update]
end
