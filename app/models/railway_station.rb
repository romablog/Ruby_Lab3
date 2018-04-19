class RailwayStation < ApplicationRecord
  belongs_to :town

  has_one :country, :through :town

  has_many :trips_from, class_name: "Trip", foreign_key: "railway_station_from_id"
  has_many :trips_to, class_name: "Trip", foreign_key: "railway_station_to_id"

  validates :name, presence: true
end
