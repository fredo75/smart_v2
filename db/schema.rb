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

ActiveRecord::Schema.define(version: 2018_08_28_100410) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "surveys", force: :cascade do |t|
    t.string "heat_type"
    t.integer "area"
    t.boolean "isolated"
    t.integer "house_inhabitants"
    t.integer "house_temp"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.integer "housing_type"
    t.integer "children_inhabitants"
    t.integer "adults_inhabitants"
    t.string "energy_class"
    t.string "vegetable_season"
    t.string "eating_habits"
    t.string "bio_buyings"
    t.integer "vehicule_km"
    t.string "fuel_type"
    t.integer "public_transp"
    t.integer "upcycling"
    t.string "green_invest"
    t.index ["user_id"], name: "index_surveys_on_user_id"
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

  add_foreign_key "surveys", "users"
end
