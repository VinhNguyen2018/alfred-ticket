class Category < ApplicationRecord
  belongs_to :concert_event
  monetize :price_cents
end
