class RailwayStation < ApplicationRecord
  belongs_to :city

  has_many :trips_from, class_name: "Trip", foreign_key: "railway_station_from_id", :dependent => :destroy
  has_many :trips_to, class_name: "Trip", foreign_key: "railway_station_to_id", :dependent => :destroy

  validates :name, presence: true
end
