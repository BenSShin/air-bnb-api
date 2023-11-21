ActiveRecord::Schema[7.0].define(version: 2023_11_21_184648) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "images", force: :cascade do |t|
    t.integer "room_id"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "user_id"
    t.integer "room_id"
    t.date "start_date"
    t.date "end_date"
    t.decimal "price", precision: 9, scale: 2
    t.decimal "total", precision: 9, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "user_id"
    t.string "address"
    t.string "city"
    t.string "state"
    t.decimal "price"
    t.string "description"
    t.string "home_type"
    t.string "room_type"
    t.integer "total_occupancy"
    t.integer "total_bedrooms"
    t.decimal "total_bathrooms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "image"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
