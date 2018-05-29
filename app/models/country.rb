class Country < ApplicationRecord
  has_many :cities, dependent: :destroy

  has_many :railway_stations, through: :cities

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
end
