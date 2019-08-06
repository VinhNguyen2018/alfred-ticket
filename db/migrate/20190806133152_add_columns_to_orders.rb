class AddColumnsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :quantity, :integer
    add_reference :orders, :category, foreign_key: true
  end
end
