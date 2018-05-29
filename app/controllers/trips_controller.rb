class TripsController < ApplicationController

  def by_train
    render json: Trip.where(train_id: params[:train_id]).take!
  end

  def after_date
    render json: Trip.where('time_in >= :end_date', {end_date: DateTime.iso8601(params[:date])})
  end

  def get_users
    trip = Trip.find(params[:id])
    render json: trip.users
  end

  def get_last_week_trips
    render json: Trip.get_last_week_trips
  end

  def duration
    render json: Trip.find(params[:id]).get_duration
  end

  def index
    render json: Trip.all
  end

  def show
    render json: Trip.find(params[:id])
  end

  def destroy
    render json: Trip.destroy(params[:id])
  end

  def create
    render json: Trip.create!(trip_params)
  end

  def update
    render json: Trip.find(params[:id]).update!(trip_params)
  end

  def trip_params
    params.require([:train_id, :railway_station_from_id, :railway_station_to_id, :time_in, :time_out])
    params.permit(:train_id, :railway_station_from_id, :railway_station_to_id, :time_in, :time_out)
  end

end
