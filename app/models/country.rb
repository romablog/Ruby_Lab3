class Country < ApplicationRecord
  has_many :cities
  has_many :railwayStations, through: :cities

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
