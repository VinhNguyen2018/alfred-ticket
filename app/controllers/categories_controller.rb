class CategoriesController < ApplicationController

  def new
    @category = Category.new
    authorize @category
  end

  def create
    @category = Category.new(category_params)
    authorize @category
    if @category.save
      redirect_to dashboard_admin_path
    else
      flash[:alert] = "Type de catégorie déjà créer pour cet évènement"
      redirect_to new_category_path(@category.id)
    end
  end

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
    params.require(:category).permit(:name, :price, :fast_delivery_fee, :concert_event_id)
  end
end
