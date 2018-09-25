class UserEventsController < ApplicationController

  def index
    @userevents = UserEvent.all
    render json: @userevents
  end


end
