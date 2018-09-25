class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(@user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :img, :about, :location, :what_do_you_ride, :email, :password, :username)
  end
end
