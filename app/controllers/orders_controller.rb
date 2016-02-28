class OrdersController < ApplicationController
  def create
    @order = Order.create!(order_params)
    current_cart.clear

    redirect_to root_path

  rescue Exception => e
    e.message
  end

  private

  def order_params
    params.require(:order).
      permit(:payment_method, :order_detail_attributes => [:name, :email, :address])
  end
end
