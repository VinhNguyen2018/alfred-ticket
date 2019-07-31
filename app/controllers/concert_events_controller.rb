class ConcertEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @concerts = ConcertEvent.all
  end

  def show
    @concert = ConcertEvent.find(params[:id])
  end
end
