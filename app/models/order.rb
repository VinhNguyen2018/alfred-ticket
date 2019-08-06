class Order < ApplicationRecord
  belongs_to :user
  belongs_to :concert_event
  belongs_to :category
end
