class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :hotel
      t.string :city
      t.string :user_id

      t.timestamps null: false
    end
  end
end
