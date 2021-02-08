Rails.application.routes.draw do
  devise_for :users
  resources :clients
  resources :products
  resources :pedidos
  resources :order_histories
  root to: "homes#index"
end
