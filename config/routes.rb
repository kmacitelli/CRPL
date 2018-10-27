Rails.application.routes.draw do
  resources :users
  map.resources :cars
  map.resources :carpools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
