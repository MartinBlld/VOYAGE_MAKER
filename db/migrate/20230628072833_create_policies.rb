class CreatePolicies < ActiveRecord::Migration[7.0]
  def change
    create_table :policies do |t|
      t.references :hotel, null: false, foreign_key: true
      t.datetime :check_in_time
      t.datetime :check_out_time
      t.string :cancellation
      t.string :pet_policy
      t.string :child_policy

      t.timestamps
    end
  end
end
