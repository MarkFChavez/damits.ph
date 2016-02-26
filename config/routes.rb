Rails.application.routes.draw do
  root "home#index"

  get "/cart" => "carts#show", as: :cart
end
