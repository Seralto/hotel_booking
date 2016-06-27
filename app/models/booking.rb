class Booking < ActiveRecord::Base
  validates :user_id, uniqueness: { scope: [:checkin], message: 'already has a booking on this date.' }
  validates :place_id, :hotel, :city, :checkin, :user_id, presence: true

  belongs_to :user
end
