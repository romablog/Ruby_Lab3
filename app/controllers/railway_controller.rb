class RailwayController < ApplicationController

  def index
    render json: RailwayStation.all
  end

  def show
    render json: RailwayStation.find(params[:id])
  end

  def create
    render json: RailwayStation.create!(railway_params)
  end

  def update
    render json: RailwayStation.find(params[:id]).update!(railway_params)
  end

  def destroy
    render json: RailwayStation.destroy(params[:id])
  end

  def railway_params
    params.require([:name, :city_id])
    params.permit(:name, :city_id)
  end
end
