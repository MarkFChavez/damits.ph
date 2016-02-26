class CartsController < ApplicationController
  def show
  end

  def update
    @product = Product.find(params[:id])
    current_cart.add(@product, @product.price, 1)

    redirect_to cart_path
  end
end
