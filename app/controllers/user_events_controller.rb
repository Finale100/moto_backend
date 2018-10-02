class UserEventsController < ApplicationController

  skip_before_action :authenticate

  def index
    @userevents = UserEvent.all
    render json: @userevents
  end

  def create
    render json: UserEvent.create(user_event_params)
  end

  def destroy
    @userevent = UserEvent.find_by(event_id: params[:event_id], user_id: params[:user_id])
    render json: @userevent.destroy
  end

  private

  def user_event_params
    params.permit(:user_id, :event_id, :creator)
  end
end
