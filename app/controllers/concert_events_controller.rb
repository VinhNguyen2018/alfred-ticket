class ConcertEventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_concert, only: [:show, :edit,:update, :destroy]

  def index
    @concerts = policy_scope(ConcertEvent)
  end

  def show
    @end_date = @concert.event_end_booking
  end

  def edit
  end

  def update
    @concert.update(concert_params)
    if @concert.save
      redirect_to dashboard_admin_path
    else
      redirect_to edit_concert_path(@concert.id)
    end
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
