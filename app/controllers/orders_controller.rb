class OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders # or Order.where(user_id: current_user.id)
    render :index
  end

  def create
    @order = Order.create(
      user_id: current_user.id,
    )
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    carted_products.update_all(status: "purchased", order_id: @order.id)
    @order.update_totals
    render :show
  end

  def show
    @order = current_user.orders.find_by(id: params[:id]) # or Order.find_by(id: params[:id], user_id: current_user.id)
    render :show
  end
end
