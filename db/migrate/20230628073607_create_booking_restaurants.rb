class CreateBookingRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_restaurants do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.datetime :reservation_time

      t.timestamps
    end
  end
end
