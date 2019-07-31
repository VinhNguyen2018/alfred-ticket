class AddCityToConcertHalls < ActiveRecord::Migration[5.2]
  def change
    add_column :concert_halls, :city, :string
  end
end
