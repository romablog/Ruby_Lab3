class Town < ApplicationRecord
  belongs_to :country

  has_many :railwayStations

  validates :name, presence: true
end
