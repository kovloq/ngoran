# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160318114802) do

  create_table "branches", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "address",    limit: 255
    t.string   "latitude",   limit: 255
    t.string   "longitude",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "calendars", force: :cascade do |t|
    t.date     "tanggal"
    t.string   "event",      limit: 255
    t.integer  "tipe",       limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "address",       limit: 255
    t.string   "building_name", limit: 255
    t.string   "room_number",   limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "latitude",      limit: 255
    t.string   "longitude",     limit: 255
    t.string   "image",         limit: 255
  end

  create_table "days", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "name_kana",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.integer  "customer_id", limit: 4
    t.integer  "koran_id",    limit: 4
    t.integer  "amount",      limit: 4
    t.boolean  "monday",      limit: 1
    t.boolean  "tuesday",     limit: 1
    t.boolean  "wednesday",   limit: 1
    t.boolean  "thursday",    limit: 1
    t.boolean  "friday",      limit: 1
    t.boolean  "saturday",    limit: 1
    t.boolean  "sunday",      limit: 1
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "koran_options", force: :cascade do |t|
    t.integer  "koran_id",        limit: 4
    t.integer  "koran_option_id", limit: 4
    t.integer  "delivery_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "korans", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "image",      limit: 255
    t.string   "website",    limit: 255
    t.integer  "day_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.boolean  "monday",     limit: 1
    t.boolean  "tuesday",    limit: 1
    t.boolean  "wednesday",  limit: 1
    t.boolean  "thursday",   limit: 1
    t.boolean  "friday",     limit: 1
    t.boolean  "saturday",   limit: 1
    t.boolean  "sunday",     limit: 1
    t.string   "color",      limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "branch_id",              limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
