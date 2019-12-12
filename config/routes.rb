Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :companies, only: [:new, :create]
  resources :postings, only: [:index, :new, :create, :edit, :update]

  resources :profiles, only: [:index, :new, :create, :show, :update] do
    resources "builder", controller: 'profiles'
  end

  resources :messages, only: [:create]
  resources :matches, only: [:index, :show]
end


