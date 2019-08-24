class Category < ApplicationRecord
  belongs_to :concert_event
  monetize :price_cents
  monetize :fast_delivery_fee_cents
  validates_uniqueness_of :name, :scope => [:concert_event_id]

end
