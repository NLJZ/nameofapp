class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    @orders = Order.accessible_by(current_ability)
    / @orders = Order.includes(:product).all /
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
  end

end