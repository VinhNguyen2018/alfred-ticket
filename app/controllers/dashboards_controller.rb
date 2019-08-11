class DashboardsController < ApplicationController
  before_action :set_orders
  def index
    @user = current_user
    @order = Order.find_by(user_id: @user)
    authorize @order, :dashboard?
  end

  private

  def set_orders
    @user = current_user
    @orders = policy_scope(current_user.orders)
  end
end
