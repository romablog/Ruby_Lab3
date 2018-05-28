class City < ApplicationRecord
  belongs_to :country

  has_many :railway_stations, :dependent => :destroy

  validates :name, presence: true
end
