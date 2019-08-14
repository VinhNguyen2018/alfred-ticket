class RemovePhotoFromConcertEventsAndConcertHalls < ActiveRecord::Migration[5.2]
  def change
    remove_column :concert_events, :photo
    remove_column :concert_halls, :photo
  end
end
