class UsersController < ApplicationController

  def all
    render json: User.all
  end

  def by_first_name
    render json: User.where(name: params[:first_name]).take
  end

  def new
    render json: User.create!(user_params)
  end

  def destroy
    render json: User.destroy(params[:id])
  end

  def user_params
    params.require([:name, :second_name, :password, :email])
    params.permit(:name, :second_name, :password, :email)
  end

end
