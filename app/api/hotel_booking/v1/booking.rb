module HotelBooking
  class V1::Booking < Grape::API
    resource :bookings do
      desc 'Return all bookings'
      get do
        ::Booking.all
      end

      desc 'Return a booking'
      params do
        requires :id, type: String, desc: 'booking id'
      end
      get ':id' do
        ::Booking.find(params[:id])
      end
    end
  end
end