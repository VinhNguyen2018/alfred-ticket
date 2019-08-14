# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_14_225305) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "price_cents", default: 0, null: false
    t.bigint "concert_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "fast_delivery_fee_cents", default: 0, null: false
    t.index ["concert_event_id"], name: "index_categories_on_concert_event_id"
  end

  create_table "concert_events", force: :cascade do |t|
    t.string "event_date"
    t.string "artist_name"
    t.bigint "concert_hall_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "event_end_booking"
    t.string "photo"
    t.index ["concert_hall_id"], name: "index_concert_events_on_concert_hall_id"
  end

  create_table "concert_halls", force: :cascade do |t|
    t.string "name"
    t.string "full_address"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "photo"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status", default: "pending"
    t.string "order_date"
    t.bigint "user_id"
    t.bigint "concert_event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_orders_on_category_id"
    t.index ["concert_event_id"], name: "index_orders_on_concert_event_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "gender"
    t.string "first_name"
    t.string "last_name"
    t.string "birth_date"
    t.string "phone_number"
    t.string "address"
    t.string "city"
    t.string "zip_code"
    t.string "country"
    t.boolean "biling_adress", default: true
    t.boolean "admin"
    t.string "address_bis"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "categories", "concert_events"
  add_foreign_key "concert_events", "concert_halls"
  add_foreign_key "orders", "categories"
  add_foreign_key "orders", "concert_events"
  add_foreign_key "orders", "users"
end
