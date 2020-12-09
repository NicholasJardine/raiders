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

ActiveRecord::Schema.define(version: 2020_12_09_103037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "covid_forms", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "past_two_weeks", default: false
    t.boolean "fever", default: false
    t.boolean "cough", default: false
    t.boolean "shortness_of_breath", default: false
    t.boolean "sense_of_smell", default: false
    t.boolean "sense_of_taste", default: false
    t.boolean "sore_throat", default: false
    t.boolean "awaiting_results", default: false
    t.float "temp"
    t.date "date"
    t.string "status", default: "Pending"
    t.index ["user_id"], name: "index_covid_forms_on_user_id"
  end

  create_table "dashboards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flags", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "log_date_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Pending"
    t.index ["log_date_id"], name: "index_flags_on_log_date_id"
    t.index ["user_id"], name: "index_flags_on_user_id"
  end

  create_table "log_dates", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "date"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_log_dates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "id_number"
    t.string "identity"
    t.float "temp"
    t.boolean "admin", default: false, null: false
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

  add_foreign_key "covid_forms", "users"
  add_foreign_key "flags", "log_dates"
  add_foreign_key "flags", "users"
  add_foreign_key "log_dates", "users"
end
