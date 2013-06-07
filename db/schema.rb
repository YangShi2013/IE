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

ActiveRecord::Schema.define(version: 20130607164832) do

  create_table "classtimes", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "totalTime"
    t.integer  "takenTime"
    t.integer  "balance"
    t.integer  "VIPbalance"
    t.integer  "takenVIPTime"
    t.string   "lastClass"
    t.string   "validDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.string   "date"
    t.string   "time"
    t.string   "people"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.string   "birth"
    t.string   "cellNum"
    t.string   "homeNum"
    t.string   "club"
    t.string   "email"
    t.string   "address"
    t.string   "from"
    t.string   "qq"
    t.string   "MSN"
    t.string   "location"
    t.string   "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
