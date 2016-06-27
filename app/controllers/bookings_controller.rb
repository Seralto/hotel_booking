class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = current_user.bookings
  end

  def create
    @booking = current_user.bookings.new(booking_params)

    respond_to do |format|
      if @booking.save
        format.html { redirect_to bookings_path, notice: 'Hotel booked!' }
      else
        format.html { redirect_to :back, alert: @booking.errors.full_messages }
      end
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:place_id, :hotel, :city, :checkin)
    end
end