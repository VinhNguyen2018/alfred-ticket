class Api::V1::OrdersController < ActionController::Base
  before_action :find_concert_and_category, only: [ :create ]
  respond_to :html, :json
  def create
    @user = current_user
    @order = Order.new(
      user_id: @user.id,
      concert_event_id: @concert.id,
      order_date: Date.today.to_s(:long),
      quantity: params[:quantity],
      category_id: @category.id
    )
    if @order.save
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { render json: @order.to_json } # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { redirect_to concert_path(@concert.id) }
        format.js { render json: @order.errors.to_json }
      end
    end
  end

  private

  def find_concert_and_category
    @concert = ConcertEvent.find_by(artist_name: params[:artist_name])
    @category = Category.find_by(name: params[:category], concert_event_id: @concert.id)
  end
end
