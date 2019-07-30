class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :gender, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :string
    add_column :users, :phone_number, :string
    add_column :users, :adress, :string
    add_column :users, :city, :string
    add_column :users, :zip_code, :string
    add_column :users, :country, :string
    add_column :users, :biling_adress, :boolean, default: true
  end
end
