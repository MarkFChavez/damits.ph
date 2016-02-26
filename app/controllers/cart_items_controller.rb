class CartItemsController < ApplicationController
  def destroy
    @cart_item = CartItem.find(params[:id])
    current_cart.remove(@cart_item.item, @cart_item.quantity)

    redirect_to cart_path
  end
end
