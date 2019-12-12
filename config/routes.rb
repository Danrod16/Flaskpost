Rails.application.routes.draw do
  devise_for :users
  get "/bridge", to: "profiles#bridge_route", as: "user_root"
  root to: 'pages#home'


  resources :companies, only: [:new, :create]
  resources :postings, only: [:index, :new, :create, :edit, :update]


  resources :profiles, only: [:index, :new, :create, :show, :update] do
    member do
      get '/swipe', to: 'profiles#swipe', as: :swipe
    end
    resources "builder", controller: 'profiles'
  end

  resources :matches, only: [:index, :show]
  resources :messages, only: [:create]


