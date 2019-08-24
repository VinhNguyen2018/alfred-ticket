class ConcertEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_concert, only: [:show, :destroy]

  def index
    @concerts = policy_scope(ConcertEvent)
    # @concerts = ConcertEvent.all
  end

  def show
    @end_date = @concert.event_end_booking
  end

  # def edit

  # end

  def update
    @concert = ConcertEvent.find(params[:id])
    @concert.update(concert_params)
  end

  def new
    @concert = ConcertEvent.new
    authorize @concert
  end

  def create
    @concert = ConcertEvent.new(concert_params)
    authorize @concert
    if @concert.save
      @category = Category.create(concert_event_id: @concert.id)
      redirect_to edit_category_path(@category.id)
    else
      redirect_to new_concert_path
    end
  end

  def destroy
    @concert.destroy
    redirect_to dashboard_admin_path
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
