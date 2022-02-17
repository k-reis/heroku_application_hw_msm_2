Rails.application.routes.draw do
  scope path: ApplicationResource.endpoint_namespace, defaults: { format: :jsonapi } do
    scope module: 'api/v1', as: 'api' do
      resources :movies

      resources :directors

      resources :characters

      resources :actors

    end
    mount VandalUi::Engine, at: '/vandal'
    # your routes go here
  end
  ActiveAdmin.routes(self)
  root :to => "actors#index"
  resources :movies
  resources :directors
  resources :characters
  resources :actors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
