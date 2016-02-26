Rails.application.routes.draw do
  root "home#index"

  get "/cart" => "carts#show", as: :cart
  patch "/cart/:id" => "carts#update", as: :add_to_cart

  resources :cart_items, only: [:destroy]
end
