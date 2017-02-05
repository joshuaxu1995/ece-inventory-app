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

ActiveRecord::Schema.define(version: 20170205000216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "item_tags", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_tags_on_item_id", using: :btree
    t.index ["tag_id"], name: "index_item_tags_on_tag_id", using: :btree
  end

  create_table "items", force: :cascade do |t|
    t.string  "unique_name"
    t.integer "quantity"
    t.integer "model_number"
    t.string  "description"
    t.string  "location"
  end

  create_table "logs", force: :cascade do |t|
    t.time     "datetime"
    t.integer  "item_id"
    t.integer  "quantity"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
    t.integer  "request_type", default: 0
  end

  create_table "requests", force: :cascade do |t|
    t.time     "datetime"
    t.string   "user"
    t.integer  "quantity"
    t.string   "reason"
    t.json     "instances"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "status",       default: 0
    t.integer  "request_type", default: 0
    t.string   "item_name"
    t.string   "response"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "email"
    t.boolean  "email_confirmed", default: false
    t.string   "confirm_token"
    t.integer  "status",          default: 0
    t.integer  "privilege",       default: 0
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

end
