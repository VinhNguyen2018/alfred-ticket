class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.monetize :price, currency: { present: false }
      t.references :concert_event, foreign_key: true

      t.timestamps
    end
  end
end
