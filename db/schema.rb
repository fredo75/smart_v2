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

ActiveRecord::Schema.define(version: 2018_08_30_083520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eco_actions", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "eco_category"
    t.integer "eco_scoring"
    t.index ["user_id"], name: "index_eco_actions_on_user_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.integer "housing_type"
    t.integer "adults_inhabitants"
    t.integer "children_inhabitants"
    t.integer "vehicule_km"
    t.integer "public_transp"
    t.float "upcycling"
    t.float "heat_type"
    t.integer "area"
    t.boolean "isolated"
    t.integer "house_inhabitants"
    t.float "house_temp"
    t.float "vegetable_season"
    t.float "eating_habits"
    t.float "bio_buyings"
    t.float "green_invest"
    t.float "fuel_type"
    t.string "energy_class"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
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
    t.string "photo"
    t.text "mybio"
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "eco_actions", "users"
  add_foreign_key "surveys", "users"
end
