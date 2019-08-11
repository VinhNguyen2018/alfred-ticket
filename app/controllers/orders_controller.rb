class OrdersController < ApplicationController
  before_action :find_concert_and_category, only: [ :create ]

  def show
    @user = current_user
    @order = Order.find(params[:id])
    authorize @order
    @concert = @order.concert_event
    @end_date = @concert.event_end_booking
    @event_date = @concert.event_date
    @category = @order.category
    @management_fees = @order.quantity * @category.price * 40 / 100
  end

  def create
    @order = current_user.orders.build(
      concert_event_id: @concert.id,
      order_date: Date.today.to_s(:long),
      quantity: params[:order][:quantity],
      category_id: @category.id
    )
    authorize @order
    @order.save
    redirect_to order_path(@order.id)
  end

  private

  def find_concert_and_category
    @category = Category.find(params[:category][:id])
    @concert = ConcertEvent.find(@category.concert_event_id)
    authorize @concert
  end
end
