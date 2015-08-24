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

ActiveRecord::Schema.define(version: 20150822225515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dispersements", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "pool_employee_position_id"
    t.integer  "amount"
    t.string   "status"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "dispersements", ["employee_id"], name: "index_dispersements_on_employee_id", using: :btree
  add_index "dispersements", ["pool_employee_position_id"], name: "index_dispersements_on_pool_employee_position_id", using: :btree

  create_table "employee_positions", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "position_id"
    t.boolean  "archived"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "employee_positions", ["employee_id"], name: "index_employee_positions_on_employee_id", using: :btree
  add_index "employee_positions", ["position_id"], name: "index_employee_positions_on_position_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "nickname"
    t.string   "given_name"
    t.string   "family_name"
    t.string   "email"
    t.string   "phone"
    t.string   "picture"
    t.boolean  "admin"
    t.boolean  "archived"
    t.string   "refresh_token"
    t.string   "access_token"
    t.string   "expires"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "pool_employee_positions", force: :cascade do |t|
    t.integer  "employee_position_id"
    t.integer  "tip_pool_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "pool_employee_positions", ["employee_position_id"], name: "index_pool_employee_positions_on_employee_position_id", using: :btree
  add_index "pool_employee_positions", ["tip_pool_id"], name: "index_pool_employee_positions_on_tip_pool_id", using: :btree

  create_table "positions", force: :cascade do |t|
    t.string   "title"
    t.string   "permission"
    t.boolean  "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedule_employee_positions", force: :cascade do |t|
    t.integer  "employee_position_id"
    t.integer  "schedule_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "schedule_employee_positions", ["employee_position_id"], name: "index_schedule_employee_positions_on_employee_position_id", using: :btree
  add_index "schedule_employee_positions", ["schedule_id"], name: "index_schedule_employee_positions_on_schedule_id", using: :btree

  create_table "schedule_type_positions", force: :cascade do |t|
    t.integer  "schedule_type_id"
    t.integer  "position_id"
    t.integer  "points"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "schedule_type_positions", ["position_id"], name: "index_schedule_type_positions_on_position_id", using: :btree
  add_index "schedule_type_positions", ["schedule_type_id"], name: "index_schedule_type_positions_on_schedule_type_id", using: :btree

  create_table "schedule_types", force: :cascade do |t|
    t.string   "name"
    t.boolean  "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "note"
    t.date     "date"
    t.integer  "schedule_type_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "schedules", ["schedule_type_id"], name: "index_schedules_on_schedule_type_id", using: :btree

  create_table "tip_pools", force: :cascade do |t|
    t.integer  "schedule_id"
    t.integer  "amount"
    t.boolean  "dispersed"
    t.datetime "dispersement_point"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_foreign_key "dispersements", "employees"
  add_foreign_key "dispersements", "pool_employee_positions"
  add_foreign_key "employee_positions", "employees"
  add_foreign_key "employee_positions", "positions"
  add_foreign_key "pool_employee_positions", "employee_positions"
  add_foreign_key "pool_employee_positions", "tip_pools"
  add_foreign_key "schedule_employee_positions", "employee_positions"
  add_foreign_key "schedule_employee_positions", "schedules"
  add_foreign_key "schedule_type_positions", "positions"
  add_foreign_key "schedule_type_positions", "schedule_types"
  add_foreign_key "schedules", "schedule_types"
end
