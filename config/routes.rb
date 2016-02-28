Rails.application.routes.draw do
  root "home#index"

  get "/cart" => "carts#show", as: :cart
  get "/checkout" => "checkout#new", as: :checkout
  patch "/cart/add/:id" => "carts#update", as: :add_to_cart

  resources :cart_items, only: [:destroy]
  resources :orders, only: [:create]
end
