class CreateConcertEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :concert_events do |t|
      t.string :event_date
      t.string :artist_name
      t.string :category
      t.string :photo
      t.references :concert_hall, foreign_key: true

      t.timestamps
    end
  end
end
