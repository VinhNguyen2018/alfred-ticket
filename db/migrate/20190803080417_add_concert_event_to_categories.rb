class AddConcertEventToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :categories, :concert_events, foreign_key: true
  end
end
