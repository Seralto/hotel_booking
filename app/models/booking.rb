class Booking < ActiveRecord::Base
  validates :user_id, uniqueness: { scope: [:place_id, :checkin], message: 'already booked this hotel on this date.' }
  validates :place_id, :hotel, :city, :checkin, :user_id, presence: true

  belongs_to :user
end
