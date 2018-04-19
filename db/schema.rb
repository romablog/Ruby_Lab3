# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_04_19_043535) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "railway_stations", force: :cascade do |t|
    t.string "name"
    t.integer "place_count"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_railway_stations_on_city_id"
  end

  create_table "trains", force: :cascade do |t|
    t.string "name"
    t.integer "place_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trips", force: :cascade do |t|
    t.datetime "time_in"
    t.datetime "time_out"
    t.integer "plane_id"
    t.integer "railway_station_from_id"
    t.integer "railway_station_to_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plane_id"], name: "index_trips_on_plane_id"
    t.index ["railway_station_from_id"], name: "index_trips_on_railway_station_from_id"
    t.index ["railway_station_to_id"], name: "index_trips_on_railway_station_to_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "second_name"
    t.string "string"
    t.string "password"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
