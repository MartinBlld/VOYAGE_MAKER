class CreateBookingActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_activities do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :activity, null: false, foreign_key: true
      t.datetime :activity_time

      t.timestamps
    end
  end
end
