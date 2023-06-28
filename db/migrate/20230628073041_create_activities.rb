class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.string :location
      t.text :description
      t.float :price
      t.datetime :availability
      t.integer :duration

      t.timestamps
    end
  end
end
