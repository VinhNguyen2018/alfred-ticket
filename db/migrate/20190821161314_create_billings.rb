class CreateBillings < ActiveRecord::Migration[5.2]
  def change
    create_table :billings do |t|
      t.string :billing_address
      t.string :billing_address_bis
      t.string :billing_zip_code
      t.string :billing_city
      t.string :billing_country
      t.string :billing_phone_number
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
