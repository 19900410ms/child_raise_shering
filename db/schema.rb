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

ActiveRecord::Schema.define(version: 2019_12_01_002246) do

  create_table "accepts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date", null: false
    t.string "time", null: false
    t.integer "capacity", null: false
    t.string "age_range"
    t.text "beg"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_accepts_on_user_id"
  end

  create_table "deals", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "accept_id"
    t.bigint "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accept_id"], name: "index_deals_on_accept_id"
    t.index ["request_id"], name: "index_deals_on_request_id"
    t.index ["user_id"], name: "index_deals_on_user_id"
  end

  create_table "requests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date", null: false
    t.string "time", null: false
    t.string "name", null: false
    t.string "gender", null: false
    t.integer "age", null: false
    t.text "allergy"
    t.text "personality"
    t.text "mention"
    t.bigint "user_id"
    t.bigint "accept_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["accept_id"], name: "index_requests_on_accept_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname", null: false
    t.string "region", null: false
    t.string "address", null: false
    t.integer "age", null: false
    t.string "gender", null: false
    t.string "name", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "accepts", "users"
  add_foreign_key "deals", "accepts"
  add_foreign_key "deals", "requests"
  add_foreign_key "deals", "users"
  add_foreign_key "requests", "accepts"
  add_foreign_key "requests", "users"
end
