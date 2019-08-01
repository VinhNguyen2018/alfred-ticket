class AddEventEndToConcertEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :concert_events, :event_end_booking, :string
  end
end
