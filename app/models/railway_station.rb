class RailwayStation < ApplicationRecord
  belongs_to :city

  has_one :country, :through :city

  has_many :trips_from, class_name: "Trip", foreign_key: "railway_station_from_id"
  has_many :trips_to, class_name: "Trip", foreign_key: "railway_station_to_id"

  validates :name, presence: true
end
