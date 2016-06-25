json.array!(@bookings) do |booking|
  json.extract! booking, :id, :hotel, :city, :user_id
  json.url booking_url(booking, format: :json)
end
