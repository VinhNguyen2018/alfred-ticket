require 'adyen'

adyen = Adyen::Client.new
adyen.api_key = Rails.application.credentials.ADYEN_API_KEY
adyen.env = :test
