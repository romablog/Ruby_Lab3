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

  def update
    Train.find(params[:id]).update!(train_params)
    head :ok
  end

  def train_params
    params.require([:name, :place_count])
    params.permit(:name, :place_count)
  end
end
