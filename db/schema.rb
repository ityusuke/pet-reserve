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

ActiveRecord::Schema.define(version: 2021_04_02_070956) do

  create_table "resavation_images", charset: "utf8mb4", force: :cascade do |t|
    t.string "src", null: false
    t.bigint "reservation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reservation_id"], name: "index_resavation_images_on_reservation_id"
  end

  create_table "reservations", charset: "utf8mb4", force: :cascade do |t|
    t.string "pet_id"
    t.string "disease_id"
    t.string "hospital_id"
    t.string "pet_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "comment"
    t.string "delete_flg"
    t.datetime "reg_date"
    t.datetime "reg_user_id"
    t.datetime "update_date"
    t.datetime "update_user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "resavation_images", "reservations"
end
