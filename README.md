# README

This project contains 6 ActiveRecords:
1. Country
2. City
3. RailwayStation
4. Train
5. Trip
6. User

I've implemented CRUD for every entity in this application and REST API for all of this functionality.

I've implemented different type of associations for my entities.
(has_many, belong_to, has_many :through, has_and_belongs_to_many)

I've created method to get all Cities where count of RailwayStations more than specified count and name of station not equals to specified name(method name: cities_with_stations).

Added methods with some business logic for models.

REST API methods:

````
Verb    URI Pattern                                 Controller#Action

GET     /country                                    country#index
GET     /country/:id                                country#show
DELETE  /country/:id                                country#destroy
POST    /country/(.:format)                         country#create
PUT     /country/:id(.:format)                      country#update
PATCH   /country/:id(.:format)                      country#update
GET     /country/:id/railways                       country#railways

GET     /railway                                    railway#index
GET     /railway/:id                                railway#show
GET     /railway/:id/last_week_trips                railway#get_last_week_trips
DELETE  /railway/:id                                railway#destroy
POST    /railway/(.:format)                         railway#create
PUT     /railway/:id(.:format)                      railway#update
PATCH   /railway/:id(.:format)                      railway#update

GET     /city                                       city#index
GET     /city/:id                                   city#show
DELETE  /city/:id                                   city#destroy
POST    /city/(.:format)                            city#create
PUT     /city/:id(.:format)                         city#update
PATCH   /city/:id(.:format)                         city#update
GET     /city/has_stations/:count/:name             city#cities_with_stations

GET     /train                                      train#index
GET     /train/:id                                  train#show
DELETE  /train/:id                                  train#destroy
POST    /train/(.:format)                           train#create
PUT     /train/:id(.:format)                        train#update
PATCH   /train/:id(.:format)                        train#update
GET     /train/two_first                            train#first_two
GET     /train/all_names                            train#all_names
GET     /train/:id/place_count                      train#place_count
GET     /train/smallest_place_count                 train#smallest_place_count

GET     /users                                      users#index
GET     /users/:id                                  users#show
DELETE  /users/:id                                  users#destroy
POST    /users/(.:format)                           users#create
PUT     /users/:id(.:format)                        users#update
PATCH   /users/:id(.:format)                        users#update
GET     /users/count                                users#count
GET     /users/:first_name                          users#by_first_name
POST    /users/add_trip(:id,:trip_id)               users#create_trip
GET     /users/:id/trips                            users#get_trips
GET     /users/get_top/:count                       users#get_top

GET     /trips                                      trips#index
GET     /trips/:id                                  trips#show
DELETE  /trips/:id                                  trips#destroy
POST    /trips/(.:format)                           trips#create
PUT     /trips/:id(.:format)                        trips#update
PATCH   /trips/:id(.:format)                        trips#update
GET     /trips/:train_id                            trips#by_train
GET     /trips/after/:date                          trips#after_date
GET     /trips/:id/users                            trips#get_users
GET     /trips/:id/duration                         trips#duration
GET     /trips/query/last_week_trips                trips#get_last_week_trips
````