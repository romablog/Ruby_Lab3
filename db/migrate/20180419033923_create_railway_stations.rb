class CreateRailwayStations < ActiveRecord::Migration[5.2]
  def change
    create_table :railway_stations do |t|
      t.string :name
      t.integer :place_count
      t.references :town, foreign_key: true

      t.timestamps
    end
  end
end
