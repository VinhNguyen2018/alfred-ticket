class ConcertHall < ApplicationRecord
  has_many :concert_events, dependent: :destroy
end
