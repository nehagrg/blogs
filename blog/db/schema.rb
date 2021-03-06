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

ActiveRecord::Schema.define(version: 20151105075658) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articales", force: :cascade do |t|
    t.integer  "Employee_id"
    t.string   "topic"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "articales", ["Employee_id"], name: "index_articales_on_Employee_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "employee_id"
    t.string   "comments"
    t.integer  "speech_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speeches", force: :cascade do |t|
    t.integer  "employee_id"
    t.string   "topic"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "speeches", ["employee_id"], name: "index_speeches_on_employee_id", using: :btree

end
