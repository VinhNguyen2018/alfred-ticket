class ConcertEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_concert, only: [:show, :edit, :destroy]

  def index
    @concerts = policy_scope(ConcertEvent)
    # @concerts = ConcertEvent.all
  end

  def show
    @end_date = @concert.event_end_booking
  end

  def edit

  end

  def update
    @concert = ConcertEvent.find(params[:id])
    @concert.update(concert_params)
    raise
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def set_concert
    @concert = ConcertEvent.find(params[:id])
    authorize @concert
  end

  def concert_params
    params.require(:concert_event).permit(:artist_name, :photo, :event_end_booking, :event_date, :concert_hall_id)
  end
end
