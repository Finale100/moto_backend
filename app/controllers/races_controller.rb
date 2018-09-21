require 'rest-client'
require 'json'


class RacesController < ApplicationController

  def index
    @races = Race.all
    render json: @races
  end

  def create
    render json: Race.create(race_params)
  end

  def load_races
    Race.get_races
    redirect_to races_url
  end

  private

  def race_params
    params.permit(:name, :date)
  end
end
