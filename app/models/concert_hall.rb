class ConcertHall < ApplicationRecord
  has_many :concert_events, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
