class CheckoutController < ApplicationController
  def new
    redirect_to root_path and return if current_cart.empty?

  end
end
