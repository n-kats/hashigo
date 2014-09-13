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

ActiveRecord::Schema.define(version: 20140913073230) do

  create_table "blog_reports", force: true do |t|
    t.string   "file_title"
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", force: true do |t|
    t.string   "title"
    t.string   "tag"
    t.text     "body"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "upper_id"
  end

  add_index "notes", ["upper_id"], name: "index_notes_on_upper_id"

  create_table "pdfs", force: true do |t|
    t.string   "title"
    t.binary   "document",   limit: 10485760
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
