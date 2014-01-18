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

ActiveRecord::Schema.define(version: 20140110140029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apps", force: true do |t|
    t.string   "program"
    t.string   "version"
    t.string   "package"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "apps", ["device_id"], name: "index_apps_on_device_id", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "uniqid"
    t.string   "number"
    t.string   "name"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["device_id"], name: "index_contacts_on_device_id", using: :btree

  create_table "devices", force: true do |t|
    t.string   "name",              null: false
    t.string   "imei",              null: false
    t.string   "serial_number"
    t.string   "devise_type",       null: false
    t.string   "os"
    t.string   "hardware_platform"
    t.string   "platform_string"
    t.string   "total_memory"
    t.string   "total_disk"
    t.string   "free_disk_space"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "devices", ["imei"], name: "index_devices_on_imei", unique: true, using: :btree
  add_index "devices", ["user_id"], name: "index_devices_on_user_id", using: :btree

  create_table "locations", force: true do |t|
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "time"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["device_id"], name: "index_locations_on_device_id", using: :btree

  create_table "logs", force: true do |t|
    t.string   "uniqid"
    t.integer  "contact_id"
    t.string   "log_type"
    t.datetime "time"
    t.decimal  "duration"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "logs", ["device_id"], name: "index_logs_on_device_id", using: :btree

  create_table "messages", force: true do |t|
    t.string   "uniqid"
    t.integer  "contact_id"
    t.string   "msg_type"
    t.text     "message"
    t.datetime "time"
    t.integer  "device_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messages", ["device_id"], name: "index_messages_on_device_id", using: :btree

  create_table "pages", force: true do |t|
    t.string   "title",      null: false
    t.string   "slug",       null: false
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "username",                           null: false
    t.string   "email",                              null: false
    t.string   "encrypted_password",                 null: false
    t.string   "salt",                               null: false
    t.integer  "status",             default: 0,     null: false
    t.boolean  "admin",              default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["username", "status"], name: "index_users_on_username_and_status", using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
