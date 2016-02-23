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

ActiveRecord::Schema.define(version: 20160223230238) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "infos", force: :cascade do |t|
    t.integer  "review"
    t.text     "textNotes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "preferences"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.integer  "wine_id"
  end

  add_index "users", ["wine_id"], name: "index_users_on_wine_id", using: :btree

  create_table "wines", force: :cascade do |t|
    t.string   "vineyard"
    t.integer  "year"
    t.string   "name"
    t.string   "link"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "color"
    t.integer  "user_id"
  end

  add_index "wines", ["user_id"], name: "index_wines_on_user_id", using: :btree

  add_foreign_key "users", "wines"
  add_foreign_key "wines", "users"
end
