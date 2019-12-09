Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :applications, only: [:index, :new, :create, :edit, :update, :delete]
  resources :messages, only: [:create]
  resources :matches, only: [:index, :show, :create, :update]
end
