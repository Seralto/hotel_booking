class HotelsController < ApplicationController
  include Geolocator

  before_action :verify_correct_address, only: :index

  def index
    latitude = params[:lat]
    longitude = params[:lng]
    distance = params[:distance].blank? ? default_distance : params[:distance]

    @hotels = hotels(latitude, longitude, distance)

    redirect_to root_path, alert: 'Sorry, no hotels found in your search.' if @hotels.empty?
  end

  private
    def default_distance
      2000
    end

    def verify_correct_address
      redirect_to root_path, alert: 'Sorry, the location you entered is invalid.' if params[:lat].blank?
    end
end