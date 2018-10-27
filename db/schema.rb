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

ActiveRecord::Schema.define(version: 2018_10_27_152556) do

  create_table "carpools", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.string "color"
    t.string "model"
    t.integer "user_id_id"
    t.integer "carpool_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carpool_id_id"], name: "index_cars_on_carpool_id_id"
    t.index ["user_id_id"], name: "index_cars_on_user_id_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "fname"
    t.string "lname"
    t.string "homeAdr"
    t.string "destAdr"
    t.integer "maxDist"
    t.integer "car_id_id"
    t.integer "carpool_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["car_id_id"], name: "index_users_on_car_id_id"
    t.index ["carpool_id_id"], name: "index_users_on_carpool_id_id"
  end

end
