ActiveRecord::Schema[7.1].define(version: 2024_06_01_233209) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone_number"
    t.string "main_address", null: false
    t.string "alt_address"
    t.string "city", null: false
    t.string "state", null: false
    t.string "country", null: false
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vehicle_type", null: false
    t.string "engine_type", null: false
    t.integer "horse_power"
    t.integer "torque"
    t.integer "seating_capacity"
    t.decimal "price", precision: 10, scale: 2
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vehicles_on_user_id"
  end

  add_foreign_key "vehicles", "users"
end
