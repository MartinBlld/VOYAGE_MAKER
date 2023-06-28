class CreateTransports < ActiveRecord::Migration[7.0]
  def change
    create_table :transports do |t|
      t.string :type
      t.string :pick_up_location
      t.string :drop_off_location
      t.float :price
      t.date :availability

      t.timestamps
    end
  end
end
