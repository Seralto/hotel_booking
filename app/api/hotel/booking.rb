module Hotel
  class Booking < Grape::API
    format :json

    resources :bookings do
      desc 'Return all bookings'
      get do
        # params
        {
          "bookings": [
            {
              "id": "77994",
              "hotel": "Hotel Pascal",
              "city": "Berlin",
              "user": [{
                         "id": "55",
                         "name": "John"
                       }]
            }
          ]
        }
      end

      desc 'Return a booking'
      params do
        requires :id, type: String, desc: 'booking id'
      end
      get ':id' do
        params
      end
    end
  end
end
