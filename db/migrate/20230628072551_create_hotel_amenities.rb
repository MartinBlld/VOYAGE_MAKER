class CreateHotelAmenities < ActiveRecord::Migration[7.0]
  def change
    create_table :hotel_amenities do |t|
      t.references :hotel, null: false, foreign_key: true
      t.references :amenity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
