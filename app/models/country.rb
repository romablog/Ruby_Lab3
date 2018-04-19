class Country < ApplicationRecord
  has_many :towns
  has_many :railwayStations, through: :towns

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
