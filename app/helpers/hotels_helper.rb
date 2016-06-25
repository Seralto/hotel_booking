module HotelsHelper
  def city_from_place(vicinity)
    vicinity.split(', ').last
  end
end