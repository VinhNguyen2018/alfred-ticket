class OrdersController < ApplicationController
  before_action :find_concert_and_category, only: [ :create ]

  def show
    @order = Order.find(params[:id])
    @concert = @order.concert_event
    @end_date = @concert.event_end_booking
  end

  def create
    @user = current_user
    @order = Order.new(
      user_id: @user.id,
      concert_event_id: @concert.id,
      order_date: Date.today.to_s(:long),
      quantity: params[:order][:quantity],
      category_id: @category.id
    )
    @order.save
    redirect_to order_path(@order.id)
  end

  private

  def find_concert_and_category
    @category = Category.find(params[:category][:id])
    @concert = ConcertEvent.find(@category.concert_event_id)
  end
end
