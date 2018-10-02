class EventsController < ApplicationController

  skip_before_action :authenticate
  before_action :find_event, only: [:update, :destroy]

  def index
    @events = Event.all
    render json: @events
  end

  def create
    render json: Event.create(event_params)
  end

  def update
    @event.update(event_params)
    if @event.save
      render json: @event, status: :accepted
    end
  end

  private

  def find_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.permit(:name, :race, :date, :location, :what_to_bring, :creator)
  end
end
