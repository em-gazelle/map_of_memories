class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.integer :upper_right_longitude
      t.integer :upper_right_latitude
      t.integer :lower_left_latitude
      t.integer :lower_left_longitude
      t.integer :center_lat
      t.integer :center_long
      t.integer :zoom
    end
  end
end
