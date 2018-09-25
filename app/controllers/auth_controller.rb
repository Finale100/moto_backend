class AuthController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    if user.authenticate(params[:password])
       session[:user_id] = user.id
     else
       render "Failed" status: 404
     end
  end
  
end
