class CountryController < ApplicationController

  def index
    render json: Country.all
  end

  def show
      render json: Country.find(params[:id]);
  end

  def create
    render json: Country.create(country_params)
  end

  def update
    render json: Country.find(params[:id]).update!(country_params)
  end

  def destroy
    render json: Country.destroy(params[:id])
  end

  def country_params
    params.require([:name])
    params.permit(:name)
  end
end
