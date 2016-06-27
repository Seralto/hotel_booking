module HotelBooking
  class V1 < Grape::API
    version 'v1', using: :path, vendor: 'hotel_booking'
    prefix :api
    format :json

    mount Booking
  end
end