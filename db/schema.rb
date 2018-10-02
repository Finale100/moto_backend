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

ActiveRecord::Schema.define(version: 2018_10_02_211854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "race_id"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.string "date"
    t.string "location"
    t.string "what_to_bring"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "creator"
    t.boolean "active", default: true
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "country"
    t.integer "length"
    t.string "date"
    t.string "winner"
    t.string "second"
    t.string "third"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img"
    t.string "img2"
    t.string "img3"
    t.string "img4"
  end

  create_table "riders", force: :cascade do |t|
    t.string "name"
    t.string "team"
    t.string "nationality"
    t.integer "points"
    t.integer "bike"
    t.integer "podiums"
    t.integer "pole"
    t.integer "victories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img"
  end

  create_table "user_events", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.string "about"
    t.string "location"
    t.string "what_do_you_ride"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "username"
    t.string "password_digest"
  end

end
