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
    if ConcertEvent.first.nil?
      @concerts = policy_scope(ConcertEvent)
    else
      @concert = ConcertEvent.first
      authorize @concert, :create?
      @concerts = policy_scope(ConcertEvent)
      @concert_halls = ConcertHall.all
    end
  end

  private

  def set_orders
    @user = current_user
    @orders = policy_scope(current_user.orders)
  end
end
