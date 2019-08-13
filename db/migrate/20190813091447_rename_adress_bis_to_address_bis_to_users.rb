class RenameAdressBisToAddressBisToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :adress_bis, :address_bis
  end
end
