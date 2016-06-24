module Geolocator
  def hotels(latitude, longitude, distance)
    @client ||= client
    @client.spots(latitude, longitude, :types => ['lodging'], :radius => distance)
  end

  def client
    GooglePlaces::Client.new('AIzaSyCU-hoZG4tKQNcG4bObYitbbo30P8DskXg')
  end
end