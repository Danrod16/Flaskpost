Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :companies, only: [:new, :create]

  resources :profiles, only: [:index, :new, :create, :edit, :update, :delete] do
    resources :build
  end
  post 'profiles/build/create', to: "build#create"

  resources :postings, only: [:index, :new, :create, :edit, :update, :delete]
  resources :messages, only: [:create]
  resources :matches, only: [:index, :show, :create, :update]

end
