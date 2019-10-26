require 'adyen-ruby-api-library'

class Payment < ApplicationRecord
  belongs_to :order

  def self.get_payment_methods
    adyen = Adyen::Client.new
    adyen.api_key = ENV["ADYEN_API_KEY"]
    adyen.env = :test

    response = adyen.checkout.payment_methods({
      :merchantAccount => ENV["MERCHANT_ACCOUNT"],
      :countryCode => 'FR',
      :amount => {
        :currency => 'EUR',
        :value => 1000
      },
      :channel => 'Web'
    })

    response
  end
end
