module HotelBooking
  class V1 < Grape::API
    version 'v1', using: :path, vendor: 'hotel_booking'
    content_type :json, 'application/json; charset=UTF-8'
    prefix :api
    format :json

    mount Booking
  end
end