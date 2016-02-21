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

ActiveRecord::Schema.define(version: 20160219015834) do

  create_table "comments", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "rating"
    t.integer  "rotation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["rotation_id"], name: "index_comments_on_rotation_id"

  create_table "m4comments", force: true do |t|
    t.string   "name"
    t.string   "body"
    t.integer  "rating"
    t.integer  "m4rotation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "m4comments", ["m4rotation_id"], name: "index_m4comments_on_m4rotation_id"

  create_table "m4rotations", force: true do |t|
    t.string   "name"
    t.string   "duration"
    t.string   "location"
    t.string   "hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rotations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "duration"
    t.string   "location"
    t.string   "hours"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
