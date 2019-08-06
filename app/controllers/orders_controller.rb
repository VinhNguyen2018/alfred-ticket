class OrdersController < ApplicationController
  # skip_before_action :verify_authenticity_token
  def create
    concert = ConcertEvent.find(params[:concert_event_id])
    # respond_to do |format|
    #   format.html { redirect_to concert_path(concert.id) }
    #   format.js # <-- will render `app/views/reviews/create.js.erb`
    # end
    @user = current_user
    p params
    date = Date.today.to_s(:long)
    price = params[:total_price]
    quantity = params[:quantity]
    category = params[:category]
    Order.create!()
  end

  def show

  end

  private

  def order_params
    params.require(:order).permit(:quantity, :price, :category)
  end
end
