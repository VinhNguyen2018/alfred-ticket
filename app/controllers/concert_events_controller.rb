class ConcertEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    policies = policy_scope(ConcertEvent)
    @concerts = ConcertEvent.all
    # skip_authorization
  end

  def show
    @concert = ConcertEvent.find(params[:id])
    @end_date = @concert.event_end_booking
    skip_authorization
  end

  def new
  end

  def create
  end
end
