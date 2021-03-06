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

ActiveRecord::Schema.define(version: 20180606124538) do

  create_table "schedules", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "work_id",        null: false
    t.integer  "theater_id",     null: false
    t.datetime "schedule_day",   null: false
    t.string   "screen_name",    null: false
    t.string   "start_time",     null: false
    t.string   "end_time",       null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "screening_date"
    t.index ["theater_id"], name: "index_schedules_on_theater_id", using: :btree
    t.index ["work_id"], name: "index_schedules_on_work_id", using: :btree
  end

  create_table "theaters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "area"
    t.index ["name"], name: "index_theaters_on_name", using: :btree
  end

  create_table "works", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "minutes",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_works_on_name", using: :btree
  end

  add_foreign_key "schedules", "theaters"
  add_foreign_key "schedules", "works"
end
