class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :cuisine
      t.string :price_range
      t.integer :rating
      t.string :opening_hours
      t.text :description

      t.timestamps
    end
  end
end
