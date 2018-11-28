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

ActiveRecord::Schema.define(version: 2018_11_28_095631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drivers", force: :cascade do |t|
    t.bigint "buddy_id"
    t.bigint "coordinator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buddy_id"], name: "index_drivers_on_buddy_id"
    t.index ["coordinator_id"], name: "index_drivers_on_coordinator_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.boolean "allday"
    t.datetime "start"
    t.datetime "end"
    t.boolean "editable"
    t.boolean "starteditable"
    t.boolean "durationeditable"
    t.text "description"
    t.string "location"
    t.bigint "coordinator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinator_id"], name: "index_events_on_coordinator_id"
  end

  create_table "interests", force: :cascade do |t|
    t.text "bio"
    t.string "area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "buddy_id"
    t.bigint "coordinator_id"
    t.bigint "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["buddy_id"], name: "index_matches_on_buddy_id"
    t.index ["coordinator_id"], name: "index_matches_on_coordinator_id"
    t.index ["patient_id"], name: "index_matches_on_patient_id"
  end

  create_table "posts", force: :cascade do |t|
    t.json "pictures"
    t.text "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "user_events", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_user_events_on_event_id"
    t.index ["user_id"], name: "index_user_events_on_user_id"
  end

  create_table "user_interests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "interest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["interest_id"], name: "index_user_interests_on_interest_id"
    t.index ["user_id"], name: "index_user_interests_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "role"
    t.string "phone"
    t.string "gender"
    t.string "city"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "drivers", "users", column: "buddy_id"
  add_foreign_key "drivers", "users", column: "coordinator_id"
  add_foreign_key "events", "users", column: "coordinator_id"
  add_foreign_key "matches", "users", column: "buddy_id"
  add_foreign_key "matches", "users", column: "coordinator_id"
  add_foreign_key "matches", "users", column: "patient_id"
  add_foreign_key "posts", "users"
  add_foreign_key "user_events", "events"
  add_foreign_key "user_events", "users"
  add_foreign_key "user_interests", "interests"
  add_foreign_key "user_interests", "users"
end
