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

ActiveRecord::Schema.define(version: 20171020141313) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.bigint "user_id"
    t.string "location"
    t.integer "search_radius"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_preferences_on_user_id", unique: true
  end

  create_table "restaurant_categories", force: :cascade do |t|
    t.string "four_square_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["four_square_id"], name: "index_restaurant_categories_on_four_square_id", unique: true
    t.index ["name"], name: "index_restaurant_categories_on_name", unique: true
  end

  create_table "user_selected_categories", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "restaurant_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_category_id"], name: "index_user_selected_categories_on_restaurant_category_id"
    t.index ["user_id", "restaurant_category_id"], name: "unique_user_selected_categories", unique: true
    t.index ["user_id"], name: "index_user_selected_categories_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "examples", "users"
  add_foreign_key "preferences", "users"
  add_foreign_key "user_selected_categories", "restaurant_categories"
  add_foreign_key "user_selected_categories", "users"
end
