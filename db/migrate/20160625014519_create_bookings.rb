class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :place_id
      t.string :hotel
      t.string :city
      t.date :checkin
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
