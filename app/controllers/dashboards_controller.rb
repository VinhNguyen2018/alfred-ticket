class DashboardsController < ApplicationController
  before_action :set_orders
  def index
    @user = current_user
    @order = Order.find_by(user_id: @user)
    if @order.nil?
    else
      authorize @order, :dashboard?
    end
  end

  def admin
    @concert = ConcertEvent.first
    if @concert.nil?
    else
      authorize @concert, :create?
    end
    @concerts = ConcertEvent.all
    @concert_halls = ConcertHall.all
    end
  end

  private

  def set_orders
    @user = current_user
    @orders = policy_scope(current_user.orders)
  end
end
