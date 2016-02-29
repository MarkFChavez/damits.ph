class OrdersController < ApplicationController
  def create
    @order = Order.create!(order_params)

    current_cart.cart_items.each do |cart_item|
      @order.order_items.create(product: cart_item.item)
    end

    current_cart.clear

    redirect_to root_path
  end

  private

  def order_params
    params.require(:order).
      permit(:payment_method, :order_detail_attributes => [:name, :email, :address])
  end
end
