class Trip < ApplicationRecord
  belongs_to :train
  belongs_to :railway_station_from, class_name: "RailwayStation"
  belongs_to :railway_station_to, class_name: "RailwayStation"

  has_and_belongs_to_many :users

  validate :out_after_int
  validates :time_out, :time_in, presence: true

  def self.get_last_week_trips
    condition = "time_out >= :start_date  AND time_out <= :end_date"
    args = {
        :start_date => DateTime.new(DateTime.now.year, DateTime.now.month, DateTime.now.day - 7),
        :end_date => DateTime.now
    }

    Trip.where(condition, args)
  end

  def get_duration
    time_in - time_out
  end

  private
  def out_after_int
    return if time_in.blank? || time_out.blank?

    if time_out > time_in
      errors.add(:time_out, "must be after the time in.")
    end
  end
end
