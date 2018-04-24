# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
first_country = Country.create name: 'Belarus'

first_city = City.create name: 'Minsk', country_id: first_country.id
second_city = City.create name: 'Mogilev', country_id: first_country.id

first_city_railway1 = RailwayStation.create city_id: first_city.id, name: 'Minsk passangers'
first_city_railway2 = RailwayStation.create city_id: first_city.id, name: 'Minsk freight'


second_city_railway1 = RailwayStation.create city_id: second_city.id, name: 'Mogilev 1'
second_city_railway2 = RailwayStation.create city_id: second_city.id, name: 'Mogilev 2'

train1 = Train.create name: 'Seva', place_count: 10
train2 = Train.create name: 'Gosha', place_count: 12

trip1 = Trip.create time_out: DateTime.new(2018, 5, 27),
                    time_in: DateTime.new(2018, 5, 26),
                    train_id: train1.id,
                    railway_station_from_id: first_city_railway1.id,
                    railway_station_to_id: second_city_railway1.id

trip2 = Trip.create time_out: DateTime.new(2018, 5, 26),
                    time_in: DateTime.new(2018, 5, 25),
                    train_id: train2.id,
                    railway_station_from_id: first_city_railway2.id,
                    railway_station_to_id: second_city_railway2.id

user1 = User.create name: 'Roman',
                    second_name: 'Hruzd',
                    password: '123456',
                    email: 'roman@mail.ru'
user2 = User.create name: 'Ann',
                    second_name: 'Gruzd',
                    password: '123456',
                    email: 'ann@mail.ru'