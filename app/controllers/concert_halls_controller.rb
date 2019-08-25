class ConcertHallsController < ApplicationController
  before_action :set_hall, only: [:edit, :update, :destroy]
  def new
    @hall = ConcertHall.new
    authorize @hall
  end

  def create
    @hall = ConcertHall.new(hall_params)
    authorize @hall
    if @hall.save
      redirect_to dashboard_admin_path
    else
      redirect_to concert_halls_path
    end
  end

  def edit
  end

  def update

  end

  def destroy
    @hall.destroy
    redirect_to dashboard_admin_path
  end

  private

  def hall_params
    params.require(:concert_hall).permit(:hall_name, :full_address, :city, :country, :photo)
  end

  def set_hall
    @hall = ConcertHall.find(params[:id])
    authorize @hall
  end
end
