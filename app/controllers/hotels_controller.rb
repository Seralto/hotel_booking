class HotelsController < ApplicationController
  include Geolocator

  def index
    latitude = params[:lat]
    longitude = params[:lng]
    distance = params[:distance]

    render json: hotels(latitude, longitude, distance)
  end
end