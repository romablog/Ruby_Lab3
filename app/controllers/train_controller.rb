class TrainController < ApplicationController

  def first_two
    render json: Train.limit(2)
  end

  def all_names
    render json: Train.select(:name).distinct
  end

  def smallest_place_count
    render json: Train.minimum(:place_count)
  end

  def place_count
    render json: Train.find(params[:id]).place_count
  end

  def index
    render json: Train.all
  end

  def show
    render json: Train.find(params[:id]);
  end

  def create
    render json: Train.create!(train_params)
  end

  def destroy
    render json: Train.destroy(params[:id])
  end

  def update
    render json: Train.find(params[:id]).update!(train_params)
  end

  def train_params
    params.require([:name, :place_count])
    params.permit(:name, :place_count)
  end
end
