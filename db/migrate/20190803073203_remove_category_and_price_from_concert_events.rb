class RemoveCategoryAndPriceFromConcertEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :concert_events, :category
    remove_column :concert_events, :price_cents
  end
end
