Rails.application.routes.draw do
  resources :products
  resources :cart_items, only: [:new, :create, :destroy]
  resources :carts, only: [:show]
  root 'top#main'
  get 'top/main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
