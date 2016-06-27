class Booking < ActiveRecord::Base
  validates :user_id, uniqueness: { scope: [:checkin], message: 'already has a booking on this date.' }
  validates :place_id, :hotel, :city, :checkin, :user_id, presence: true
  validate :checkin_greater_than_today

  belongs_to :user

  def checkin_greater_than_today
    errors.add(:checkin, 'date must be greater than today.') if checkin < Date.today
    errors.blank?
  end
end
