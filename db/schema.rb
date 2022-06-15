# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_15_024204) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appliances", force: :cascade do |t|
    t.string "kind"
    t.string "make"
    t.string "model"
    t.float "voltage"
    t.float "amps"
    t.float "price"
    t.string "product_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "batteries", force: :cascade do |t|
    t.string "kind"
    t.string "make"
    t.string "model"
    t.float "voltage"
    t.float "amp_hours"
    t.float "price"
    t.string "product_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bookmarks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "build_id", null: false
    t.bigint "user_id", null: false
    t.index ["build_id"], name: "index_bookmarks_on_build_id"
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "build_appliances", force: :cascade do |t|
    t.float "use_hours"
    t.float "amp_hours"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "build_id", null: false
    t.bigint "appliance_id", null: false
    t.index ["appliance_id"], name: "index_build_appliances_on_appliance_id"
    t.index ["build_id"], name: "index_build_appliances_on_build_id"
  end

  create_table "builds", force: :cascade do |t|
    t.string "name"
    t.float "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "solar_panel_id", null: false
    t.bigint "battery_id", null: false
    t.bigint "user_id", null: false
    t.index ["battery_id"], name: "index_builds_on_battery_id"
    t.index ["solar_panel_id"], name: "index_builds_on_solar_panel_id"
    t.index ["user_id"], name: "index_builds_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "build_id", null: false
    t.bigint "user_id", null: false
    t.index ["build_id"], name: "index_comments_on_build_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "solar_panels", force: :cascade do |t|
    t.string "kind"
    t.string "make"
    t.string "model"
    t.float "voltage"
    t.float "watts"
    t.float "price"
    t.string "product_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.text "bio"
    t.string "user_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookmarks", "builds"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "build_appliances", "appliances"
  add_foreign_key "build_appliances", "builds"
  add_foreign_key "builds", "batteries"
  add_foreign_key "builds", "solar_panels"
  add_foreign_key "builds", "users"
  add_foreign_key "comments", "builds"
  add_foreign_key "comments", "users"
end
