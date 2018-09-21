require 'rest-client'
require 'json'


class RidersController < ApplicationController

  def index
    @riders = Rider.all
    render json: @riders
  end

  def load_riders
    Rider.get_riders
    redirect_to riders_url
  end

end
