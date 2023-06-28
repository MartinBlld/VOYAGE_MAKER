class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.string :departure_airport
      t.string :arrival_airport
      t.datetime :departure_time
      t.datetime :arrival_time
      t.string :airline
      t.float :price
      t.integer :available_seats

      t.timestamps
    end
  end
end
