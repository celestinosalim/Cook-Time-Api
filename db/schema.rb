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

ActiveRecord::Schema.define(version: 2018_12_05_151949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ingredient_dishes", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.bigint "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_ingredient_dishes_on_dish_id"
    t.index ["ingredient_id"], name: "index_ingredient_dishes_on_ingredient_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_dishes", force: :cascade do |t|
    t.bigint "menu_id"
    t.bigint "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dish_id"], name: "index_menu_dishes_on_dish_id"
    t.index ["menu_id"], name: "index_menu_dishes_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "day"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest"
    t.string "role", default: "user", null: false
    t.datetime "last_login"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
  end

  add_foreign_key "ingredient_dishes", "dishes"
  add_foreign_key "ingredient_dishes", "ingredients"
  add_foreign_key "menu_dishes", "dishes"
  add_foreign_key "menu_dishes", "menus"
end
