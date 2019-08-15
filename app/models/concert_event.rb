class ConcertEvent < ApplicationRecord
  belongs_to :concert_hall
  has_many :orders, dependent: :destroy
  has_many :categories, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
