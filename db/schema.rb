# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_27_113226) do

  create_table "embroideries", force: :cascade do |t|
    t.string "color_num"
    t.string "color"
    t.integer "cls"
    t.integer "tone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_embroideries", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "embroidery_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["embroidery_id"], name: "index_user_embroideries_on_embroidery_id"
    t.index ["user_id"], name: "index_user_embroideries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_embroideries", "embroideries"
  add_foreign_key "user_embroideries", "users"
end
