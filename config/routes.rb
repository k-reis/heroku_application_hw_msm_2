Rails.application.routes.draw do
  root :to => "actors#index"
  resources :movies
  resources :directors
  resources :characters
  resources :actors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
