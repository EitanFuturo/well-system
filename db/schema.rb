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

ActiveRecord::Schema.define(version: 20181217185023) do

  create_table "areas", force: :cascade do |t|
    t.string   "name",             limit: 4000
    t.integer  "business_unit_id", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "areas", ["business_unit_id"], name: "index_areas_on_business_unit_id"

  create_table "business_units", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "wells", force: :cascade do |t|
    t.string   "name",       limit: 4000
    t.decimal  "depth",                   precision: 18, scale: 0
    t.integer  "area_id",    limit: 4
    t.integer  "field_id",   limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "wells", ["area_id"], name: "index_wells_on_area_id"
  add_index "wells", ["field_id"], name: "index_wells_on_field_id"

  add_foreign_key "areas", "business_units"
  add_foreign_key "wells", "areas"
  add_foreign_key "wells", "fields"
end
