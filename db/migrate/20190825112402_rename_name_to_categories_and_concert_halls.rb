class RenameNameToCategoriesAndConcertHalls < ActiveRecord::Migration[5.2]
  def change
    rename_column :categories, :name, :category_name
    rename_column :concert_halls, :name, :hall_name
  end
end
