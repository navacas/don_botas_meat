Rails.application.routes.draw do
  devise_for :users
  resources :clients
  resources :products
  resources :pedidos
  root to: "clients#index"
end
