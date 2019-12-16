Rails.application.routes.draw do
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get "/bridge", to: "profiles#bridge_route", as: "user_root"
  root to: 'pages#home'


  resources :companies, only: [:new, :create]
  resources :postings, only: [:index, :new, :create, :edit, :update]

  get '/:user_id/:profile_id/swipe', to: 'profiles#swipe', as: :swipe

  resources :profiles, only: [:index, :new, :create, :show, :update] do
    resources "builder", controller: 'profiles'
  end

  resources :matches, only: [:index, :show] do
    collection do
      post '/accept_decline', to: 'matches#accept_decline', as: :accept_decline
    end
  end

  resources :messages, only: [:create]
end
