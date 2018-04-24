class TrainController < ApplicationController

  def all
    render json: Train.all
  end

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
    count = Train.find(params[:id]).place_count
    render json: count
  end

  def update
    Train.find(params[:id]).update!(train_params)
    head :ok
  end

  def train_params
    params.require([:name, :place_count])
    params.permit(:name, :place_count)
  end
end
