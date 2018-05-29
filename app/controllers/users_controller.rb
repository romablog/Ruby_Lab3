class UsersController < ApplicationController

  def by_first_name
    render json: User.where(name: params[:first_name]).take!
  end

  def count
    render json: User.count
  end

  def create_trip
    user = User.find(params[:id])
    trip = Trip.find(params[:trip_id])
    render json: trip.users << user
  end

  def get_trips
    user = User.find(params[:id])
    render json: user.trips
  end

  def get_top
    render json: User.get_top_users.limit(params[:count])
  end

  def index
    render json: User.all
  end

  def create
    render json: User.create!(user_params)
  end

  def destroy
    render json: User.destroy(params[:id])
  end

  def update
    render json: User.find(params[:id]).update(user_params)
  end

  def show
    render json: User.find(params[:id])
  end

  def user_params
    params.require([:name, :second_name, :password, :email])
    params.permit(:name, :second_name, :password, :email)
  end

end
