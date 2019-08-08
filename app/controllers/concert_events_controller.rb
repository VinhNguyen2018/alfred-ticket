class ConcertEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @concerts = ConcertEvent.all
  end

  def show
    @order = Order.new
    @concert = ConcertEvent.find(params[:id])
    @end_date = @concert.event_end_booking
  end
end
