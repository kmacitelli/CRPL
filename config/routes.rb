Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  resources :cars
  resources :carpools


  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :login, only: [:index]

  root :to => "login#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html






end
