class RenameAddressToFullAddressToConcertHalls < ActiveRecord::Migration[5.2]
  def change
    rename_column :concert_halls, :address, :full_address
  end
end
