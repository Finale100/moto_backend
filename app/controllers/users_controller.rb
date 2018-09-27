class UsersController < ApplicationController

skip_before_action :authenticate, only: [:index, :create, :update, :destroy]
before_action :find_user, only: [:update, :destroy]

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

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    end
  end

  def destroy
    render json: @user.destroy
  end

  def show
    render json: {id: my_current_user.id, username: my_current_user.username, name: my_current_user.name, about: my_current_user.about, email: my_current_user.name, img: my_current_user.img, location: my_current_user.location, what_do_you_ride: my_current_user.what_do_you_ride, password: my_current_user.password}
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :img, :about, :location, :what_do_you_ride, :email, :password, :username)
  end
end
