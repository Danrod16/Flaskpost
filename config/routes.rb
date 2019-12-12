Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: [:new, :create]
  resources :postings, only: [:index, :new, :create, :edit, :update]

  resources :matches, only: [:index, :show]
  resources :messages, only: [:create]

  resources :profiles, only: [:index, :new, :create, :edit, :update, :delete] do
    member do
      get '/swipe', to: 'profiles#swipe', as: :swipe
    end
  end
end
