class AddFastDeliveryFeesToCategories < ActiveRecord::Migration[5.2]
  def change
    add_monetize :categories, :fast_delivery_fee, currency: { present: false }
  end
end
