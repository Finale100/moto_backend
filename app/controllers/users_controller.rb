class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    render json: User.create(user_params)
  end

  private

  def user_params
    params.permit(:name, :img, :about, :location, :what_do_you_ride)
  end
end
