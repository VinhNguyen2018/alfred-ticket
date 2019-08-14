class AddPhotoToConcertEventsAndConcertHalls < ActiveRecord::Migration[5.2]
  def change
    add_column :concert_events, :photo, :string
    add_column :concert_halls, :photo, :string
  end
end
