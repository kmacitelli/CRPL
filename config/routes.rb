Rails.application.routes.draw do
  resources :users
  resources :cars
  resources :carpools

  root :to => "login#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
