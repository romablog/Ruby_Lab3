class TripsController < ApplicationController

  def all
    trips = Trip.all
    render json: trips
  end

  def by_train
    trip = Trip.where(train_id: params[:train_id]).take
    render json: trip
  end

  def after_date
    trips = Trip.where('time_in >= :end_date', {end_date: DateTime.iso8601(params[:date])})
    render json: trips
  end

  def delete
    render json: Trip.destroy(params[:id])
  end

end
