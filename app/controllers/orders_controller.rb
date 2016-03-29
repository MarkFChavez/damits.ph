class OrdersController < ApplicationController
  def new
    redirect_to root_path and return if current_cart.empty?

    @order = Order.new
    @order.build_order_detail
  end

  def create
    @order = Order.new(order_params)
    @order.reference_number = ReferenceNumberPool.next_reference!
    @order.save!

    add_items_on_order(@order)

    render "orders/success/show"
  end

  private

  def add_items_on_order(order)
    current_cart.cart_items.each do |cart_item|
      order.order_items.create(product: cart_item.item)
    end

    current_cart.clear
  end

  def order_params
    params.require(:order).
      permit(:reference_number, :payment_method, :order_detail_attributes => [:name, :email, :address])
  end
end
