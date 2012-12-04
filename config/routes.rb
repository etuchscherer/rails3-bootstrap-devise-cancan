Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "profiles/index"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :cars
  resources :maintenances
end
