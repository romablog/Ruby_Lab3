class CityController < ApplicationController
  def cities_with_stations
    render json: City.all.select {|c| c.railway_stations.size >= params[:count].to_i && c.railway_stations.all? {|s| s.name != params[:name]}}
  end
end
