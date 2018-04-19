class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.datetime :time_in
      t.datetime :time_out
      t.references :train, foreign_key: true
      t.references :railway_station_from, foreign_key: { to_table: :railway_stations }
      t.references :railway_station_to, foreign_key: { to_table: :railway_stations }
      t.timestamps
    end
  end
end
