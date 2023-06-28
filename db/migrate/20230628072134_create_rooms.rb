class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.references :hotel, null: false, foreign_key: true
      t.string :room_type
      t.float :price
      t.text :description
      t.boolean :smoking_option
      t.string :view
      t.integer :quantity

      t.timestamps
    end
  end
end
