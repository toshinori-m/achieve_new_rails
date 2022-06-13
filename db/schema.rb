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

ActiveRecord::Schema.define(version: 2022_06_13_004613) do

  create_table "goals", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "created_at"], name: "index_goals_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "monthly_goals", force: :cascade do |t|
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "created_at"], name: "index_monthly_goals_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_monthly_goals_on_user_id"
  end

  create_table "participating_rooms", force: :cascade do |t|
    t.integer "report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["report_id", "created_at"], name: "index_participating_rooms_on_report_id_and_created_at"
    t.index ["report_id"], name: "index_participating_rooms_on_report_id"
  end

  create_table "reports", force: :cascade do |t|
    t.text "report"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "point"
    t.string "location"
    t.string "time"
    t.string "condition"
    t.string "intensity"
    t.string "datepicker_value"
    t.index ["user_id", "created_at"], name: "index_reports_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "threemonths_goals", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "quarter"
    t.index ["user_id", "created_at"], name: "index_threemonths_goals_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_threemonths_goals_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "goals", "users"
  add_foreign_key "monthly_goals", "users"
  add_foreign_key "participating_rooms", "reports"
  add_foreign_key "reports", "users"
  add_foreign_key "threemonths_goals", "users"
end
