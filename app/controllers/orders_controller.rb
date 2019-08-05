class OrdersController < ApplicationController
  # skip_before_action :verify_authenticity_token
  def create
    @user = current_user
    concert = ConcertEvent.find(params[:concert_event_id])
    date = Date.today.to_s(:long)
    price = params[:total_price]
    category = params[:category]
    quantity = params[:quantity]
    Order.create!()
  end

  def show

  end

  private

  def order_params
    params.require(:order).permit(:quantity, :price, :category)
  end
end
