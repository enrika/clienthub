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

ActiveRecord::Schema.define(version: 20160324202009) do

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.date     "due_date"
    t.boolean  "next"
    t.boolean  "completed"
    t.integer  "opportunity_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "actions", ["opportunity_id"], name: "index_actions_on_opportunity_id"

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.integer  "opportunity_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "notes", ["opportunity_id"], name: "index_notes_on_opportunity_id"

  create_table "opportunities", force: :cascade do |t|
    t.string   "name"
    t.string   "twitter"
    t.string   "fb"
    t.string   "prospect_name"
    t.string   "phone"
    t.string   "email"
    t.string   "amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "image"
    t.string   "phase"
    t.string   "engagement_level"
    t.string   "website"
    t.boolean  "video"
    t.boolean  "web"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
  end

end
