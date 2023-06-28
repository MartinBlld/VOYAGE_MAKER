class CreateBookingTransports < ActiveRecord::Migration[7.0]
  def change
    create_table :booking_transports do |t|
      t.references :booking, null: false, foreign_key: true
      t.references :transport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
