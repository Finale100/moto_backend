class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    render json: User.create(user_params)
  end

  private

  def user_params
    params.permit(:name, :img, :about, :location, :what_do_you_ride, :email, :password, :username)
  end
end
