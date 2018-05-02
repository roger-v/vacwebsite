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

ActiveRecord::Schema.define(version: 20180502185629) do

  create_table "donations", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "phone"
    t.string "email"
    t.float "amount"
    t.string "campaign"
    t.boolean "anonymous"
    t.string "donoralias"
    t.string "honoree"
    t.boolean "confirmed", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "missions", force: :cascade do |t|
    t.date "date"
    t.string "from"
    t.string "to"
    t.integer "passengers"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "passengers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "militarybranch"
    t.string "phone"
    t.string "militaryrank"
    t.string "healthcarefacility"
    t.integer "numberofpassengers"
    t.integer "passengerweight"
    t.string "departure"
    t.string "destination"
    t.string "date"
  end

  create_table "registrations", force: :cascade do |t|
    t.string "firstname"
    t.string "middlename"
    t.string "lastname"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "homephone"
    t.string "workphone"
    t.string "mobilephone"
    t.boolean "preferhome"
    t.boolean "preferwork"
    t.boolean "prefermobile"
    t.string "email"
    t.text "description"
    t.boolean "registertype_both"
    t.boolean "registertype_aircraft"
    t.boolean "registertype_pilot"
    t.string "aircraftmake"
    t.string "aircraftmodel"
    t.integer "year"
    t.string "basename"
    t.string "basestate"
    t.string "basezip"
    t.string "tailnumber"
    t.string "faacode"
    t.string "ownername"
    t.integer "engine"
    t.decimal "speed"
    t.integer "seat"
    t.decimal "cost"
    t.boolean "cabin"
    t.boolean "ice"
    t.boolean "aircraftanon"
    t.string "aircraftalias"
    t.string "licensenum"
    t.string "licensetype"
    t.boolean "rated"
    t.boolean "pilotanon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "veteran", default: false
    t.boolean "pilot", default: false
    t.boolean "donor", default: false
  end

end
