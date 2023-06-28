class CreateHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :chain
      t.integer :star_rating
      t.text :description
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :phone_number
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
