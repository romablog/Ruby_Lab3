class CityController < ApplicationController
  def cities_with_stations
    render json: City.all.select {|c| c.railway_stations.size >= params[:count].to_i && c.railway_stations.all? {|s| s.name != params[:name]}}
  end

  def index
    render json: City.all
  end

  def show
    render json: City.find(params[:id]);
  end

  def create
    render json: City.create!(city_params)
  end

  def update
    render json: City.find(params[:id]).update!(city_params)
  end

  def destroy
    render json: City.destroy(params[:id])
  end

  def city_params
    params.require([:name, :country_id])
    params.permit(:name, :country_id)
  end
end
