class CreateMarkers < ActiveRecord::Migration[5.0]
  def change
    create_table :markers do |t|
      t.string :title
      t.text :description
      t.string :icon
      t.integer :longitude
      t.integer :latitude
      t.references :map, foreign_key: true
    end
  end
end
