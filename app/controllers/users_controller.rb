class UsersController < ApplicationController



  def index
    render json: User.all
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: { user: UserSerializer.new(my_current_user) }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def show
    render json: { username: my_current_user.username, name: my_current_user.name }
  end

  private

  def user_params
    params.require(:user).permit(:name, :img, :about, :location, :what_do_you_ride, :email, :password, :username)
  end
end
