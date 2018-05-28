class Train < ApplicationRecord
  has_many :trips, :dependent => :destroy

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }
  validates :place_count, numericality: { greater_than: 0 }
end
