module HotelBooking
  class V1::Booking < Grape::API
    resource :bookings do
      desc 'Return all bookings'
      get do
        ::Booking.includes(:user).as_json(include: :user)
      end

      desc 'Return a booking'
      params do
        requires :id, type: String, desc: 'booking id'
      end
      get ':id' do
        begin
          ::Booking.where(user_id: params[:id])
        rescue ActiveRecord::RecordNotFound
          { status: 404, message: 'not found' }
        end
      end
    end
  end
end