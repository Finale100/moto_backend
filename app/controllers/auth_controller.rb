class AuthController < ApplicationController

  skip_before_action :authenticate, only: [:login]

  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = generate_token(user)
      render json: {
        token: token,
        user: {
          username: user.username,
          name: user.name,
          about: user.about,
          email: user.name,
          img: user.img,
          location: user.location,
          what_do_you_ride: user.what_do_you_ride,
          id: user.id,
          event: user.events
        }
      }, status: 200
     else
       render "Failed", status: 404
     end
  end

end
