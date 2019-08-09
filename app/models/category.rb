class Category < ApplicationRecord
  belongs_to :concert_event
  monetize :price_cents
  monetize :fast_delivery_fee_cents
end
