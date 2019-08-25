class CreateNullObjects < ActiveRecord::Migration[5.2]
  def change
    create_table :null_objects do |t|

      t.timestamps
    end
  end
end
