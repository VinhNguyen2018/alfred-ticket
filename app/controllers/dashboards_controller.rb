class DashboardsController < ApplicationController
  before_action :set_orders
  def index
    @user = current_user
    @order = Order.find_by(user_id: @user)
    authorize @order, :dashboard?
  end

  def admin
    @concert = ConcertEvent.first
    authorize @concert, :create?
    @concerts = ConcertEvent.all
    @concert_halls = ConcertHall.all
  end

  private

  def set_orders
    @user = current_user
    @orders = policy_scope(current_user.orders)
  end
end
