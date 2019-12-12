Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: [:new, :create]
  resources :postings, only: [:index, :new, :create, :edit, :update]

  resources :profiles, only: [:new, :create, :show, :update] do
    resources "new_profile", controller: 'profiles'
  end

  resources :messages, only: [:create]
  resources :matches, only: [:index, :show]
end
