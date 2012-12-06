Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "profiles/index"

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  authenticated :user do
    root :to => 'users#show'
  end
  root :to => "home#index"
  devise_for :users

  resources :users do
    resources :cars
  end

  resources :cars do 
    resources :maintenances
  end
end
