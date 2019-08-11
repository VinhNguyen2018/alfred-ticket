class ConcertEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @concerts = policy_scope(ConcertEvent)
    # @concerts = ConcertEvent.all
  end

  def show
    @concert = ConcertEvent.find(params[:id])
    authorize @concert
    @end_date = @concert.event_end_booking
    # skip_authorization
  end

  def new
  end

  def create
  end
end
