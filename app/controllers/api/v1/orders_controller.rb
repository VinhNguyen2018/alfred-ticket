class Api::V1::OrdersController < ActionController::Base
  before_action :find_concert_and_category, only: [ :create ]
  respond_to :html, :json
  def create
    @user = current_user
    @order = Order.new(
      user_id: @user.id,
      concert_event_id: @concert.id,
      order_date: Date.today.to_s(:long),
      quantity: params[:quantity],
      category_id: @category.id
    )
    @order.save
    redirect_to order_path(@order.id)
  end

  private

  def find_concert_and_category
    @concert = ConcertEvent.find_by(artist_name: params[:artist_name])
    @category = Category.find_by(category_name: params[:category], concert_event_id: @concert.id)
  end
end
