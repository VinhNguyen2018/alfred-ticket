class CategoriesController < ApplicationController

  def edit
    @category = Category.find(params[:id])
    @concert = ConcertEvent.find(@category.concert_event_id)
    authorize @category
  end

  def update
    @category = Category.find(params[:id])
    authorize @category
    if @category.update(category_params)
      redirect_to dashboard_admin_path
    else
      redirect_to edit_category_path(@category.id)
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :price, :fast_delivery_fee)
  end
end
