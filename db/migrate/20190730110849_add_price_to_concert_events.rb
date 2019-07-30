class AddPriceToConcertEvents < ActiveRecord::Migration[5.2]
  def change
    add_monetize :concert_events, :price, currency: { present: false }
  end
end
