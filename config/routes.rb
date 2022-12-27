Rails.application.routes.draw do
  devise_for :buyers
  devise_for :cashiers
  devise_for :shop_owners
  devise_for :admins
  resources :buyers
  resources :cashiers
  resources :shop_owners
  resources :admins
  resources :items
  resources :invoices
  resources :orders
  resources :shops
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
