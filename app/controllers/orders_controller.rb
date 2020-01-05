require 'adyen'
adyen = Adyen::Client.new
adyen.api_key = Rails.application.credentials.ADYEN_API_KEY
adyen.env = :test

class OrdersController < ApplicationController
  before_action :find_concert_and_category, only: [ :create ]

  def show
    @user = current_user
    @order = Order.find(params[:id])
    authorize @order
    @concert = @order.concert_event
    @end_date = @concert.event_end_booking
    @event_date = @concert.event_date
    @category = @order.category
    @management_fees = @order.quantity * @category.price * 40 / 100
    test_adyen
  end

  def create
    @order = current_user.orders.build(
      concert_event_id: @concert.id,
      order_date: Date.today.to_s(:long),
      quantity: params[:order][:quantity],
      category_id: @category.id
    )
    authorize @order
    @order.save
    redirect_to order_path(@order.id)
  end

  private

  def find_concert_and_category
    @category = Category.find(params[:category][:id])
    @concert = ConcertEvent.find(@category.concert_event_id)
    authorize @concert
  end

  def test_adyen
    response = adyen.checkout.payment_methods({
      :merchantAccount => Rails.application.credentials.ADYEN_MERCHANT_ACCOUNT,
      :countryCode => 'FR',
      :amount => {
        :currency => 'EUR',
        :value => 1000
      },
      :channel => 'Web'
    })
    @test = response
  end
end
