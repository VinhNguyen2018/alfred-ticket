class CreateConcertHalls < ActiveRecord::Migration[5.2]
  def change
    create_table :concert_halls do |t|
      t.string :name
      t.string :address
      t.string :country
      t.string :photo

      t.timestamps
    end
  end
end
