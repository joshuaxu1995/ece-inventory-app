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

ActiveRecord::Schema.define(version: 20170120033308) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "items", primary_key: "unique_name", id: :string, force: :cascade do |t|
    t.integer "quantity"
    t.integer "model_number"
    t.string  "description"
    t.json    "tags"
    t.json    "instances"
  end

  create_table "requests", primary_key: "req_id", id: :integer, force: :cascade do |t|
    t.time     "datetime"
    t.string   "user"
    t.string   "item"
    t.integer  "quantity"
    t.string   "reason"
    t.string   "status"
    t.string   "request_type"
    t.json     "instances"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tags", primary_key: "name", id: :string, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", primary_key: "username", id: :string, force: :cascade do |t|
    t.string   "privilege"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
