class HotelsController < ApplicationController
  include Geolocator

  def index
    latitude = params[:lat]
    longitude = params[:lng]
    distance = params[:distance].blank? ? default_distance : params[:distance]

    @hotels = hotels(latitude, longitude, distance)
  end

  def default_distance
    2000
  end
end