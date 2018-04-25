class City < ApplicationRecord
  belongs_to :country

  has_many :railway_stations

  validates :name, presence: true
end
