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

ActiveRecord::Schema.define(version: 20140227200200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "combines", force: true do |t|
    t.string   "name"
    t.string   "college"
    t.string   "position"
    t.decimal  "_40_yd_dash",   precision: 10, scale: 2
    t.integer  "bench_press"
    t.decimal  "vertical_jump", precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "name"
    t.date     "date"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_stats", force: true do |t|
    t.integer  "player_id"
    t.json     "stats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "player_guide"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "full_name"
    t.string   "abbr_name"
    t.json     "player_details"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "team_guide"
    t.string   "nickname"
    t.string   "market"
    t.json     "team_details"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
