class EventsController < ApplicationController

  skip_before_action :authenticate

  def index
    @events = Event.all
    render json: @events
  end

  def create
    render json: Event.create(event_params)
  end

  private

  def event_params
    params.permit(:name, :race, :date, :location, :what_to_bring)
  end
end
