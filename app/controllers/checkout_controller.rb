class CheckoutController < ApplicationController
  def new
    redirect_to root_path and return if current_cart.empty?

    @order = Order.new
    @order.build_order_detail
  end
end
