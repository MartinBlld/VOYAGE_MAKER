# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_28_073752) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.float "price"
    t.datetime "availability"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amenities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "booking_activities", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "activity_id", null: false
    t.datetime "activity_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_booking_activities_on_activity_id"
    t.index ["booking_id"], name: "index_booking_activities_on_booking_id"
  end

  create_table "booking_restaurants", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "reservation_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_restaurants_on_booking_id"
    t.index ["restaurant_id"], name: "index_booking_restaurants_on_restaurant_id"
  end

  create_table "booking_transports", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "transport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_booking_transports_on_booking_id"
    t.index ["transport_id"], name: "index_booking_transports_on_transport_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "hotel_id", null: false
    t.bigint "room_id", null: false
    t.bigint "flight_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.float "tital_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["flight_id"], name: "index_bookings_on_flight_id"
    t.index ["hotel_id"], name: "index_bookings_on_hotel_id"
    t.index ["room_id"], name: "index_bookings_on_room_id"
  end

  create_table "flights", force: :cascade do |t|
    t.string "departure_airport"
    t.string "arrival_airport"
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.string "airline"
    t.float "price"
    t.integer "available_seats"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotel_amenities", force: :cascade do |t|
    t.bigint "hotel_id", null: false
    t.bigint "amenity_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_hotel_amenities_on_amenity_id"
    t.index ["hotel_id"], name: "index_hotel_amenities_on_hotel_id"
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name"
    t.string "chain"
    t.integer "star_rating"
    t.text "description"
    t.string "address"
    t.string "city"
    t.string "country"
    t.string "postal_code"
    t.string "phone_number"
    t.string "email"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "policies", force: :cascade do |t|
    t.bigint "hotel_id", null: false
    t.datetime "check_in_time"
    t.datetime "check_out_time"
    t.string "cancellation"
    t.string "pet_policy"
    t.string "child_policy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_policies_on_hotel_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "cuisine"
    t.string "price_range"
    t.integer "rating"
    t.string "opening_hours"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "hotel_id", null: false
    t.integer "rating"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_reviews_on_hotel_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.bigint "hotel_id", null: false
    t.string "room_type"
    t.float "price"
    t.text "description"
    t.boolean "smoking_option"
    t.string "view"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_rooms_on_hotel_id"
  end

  create_table "transports", force: :cascade do |t|
    t.string "type"
    t.string "pick_up_location"
    t.string "drop_off_location"
    t.float "price"
    t.date "availability"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "booking_activities", "activities"
  add_foreign_key "booking_activities", "bookings"
  add_foreign_key "booking_restaurants", "bookings"
  add_foreign_key "booking_restaurants", "restaurants"
  add_foreign_key "booking_transports", "bookings"
  add_foreign_key "booking_transports", "transports"
  add_foreign_key "bookings", "flights"
  add_foreign_key "bookings", "hotels"
  add_foreign_key "bookings", "rooms"
  add_foreign_key "hotel_amenities", "amenities"
  add_foreign_key "hotel_amenities", "hotels"
  add_foreign_key "policies", "hotels"
  add_foreign_key "reviews", "hotels"
  add_foreign_key "rooms", "hotels"
end
