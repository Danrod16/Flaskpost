Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: [:new, :create]

  resources :profiles, only: [:new, :create, :show, :update] do
    resources "new_profile", controller: 'profiles'
  end

  resources :postings, only: [:index, :new, :create, :edit, :update, :delete]
  resources :messages, only: [:create]
  resources :matches, only: [:index, :show, :create, :update]

end
