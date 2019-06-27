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

ActiveRecord::Schema.define(version: 2019_06_27_130401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "homes", force: :cascade do |t|
    t.string "bnblink"
    t.string "adress"
    t.string "area"
    t.bigint "host_id"
    t.integer "bedding"
    t.date "beg_date"
    t.date "end_date"
    t.float "lat"
    t.float "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["host_id"], name: "index_homes_on_host_id"
  end

  create_table "hosts", force: :cascade do |t|
    t.string "firstname"
    t.string "email"
    t.boolean "superhost"
    t.boolean "validated"
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

  add_foreign_key "homes", "hosts"
end
