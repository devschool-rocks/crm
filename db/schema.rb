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

ActiveRecord::Schema.define(version: 20160325232024) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.integer  "addressee_id"
    t.string   "addressee_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "addresses", ["addressee_type", "addressee_id"], name: "index_addresses_on_addressee_type_and_addressee_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "enrollment_invites", force: :cascade do |t|
    t.integer  "lead_id"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "enrollment_invites", ["lead_id"], name: "index_enrollment_invites_on_lead_id", using: :btree

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "name"
    t.date     "hired_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interview_requests", force: :cascade do |t|
    t.integer  "lead_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "interview_requests", ["lead_id"], name: "index_interview_requests_on_lead_id", using: :btree

  create_table "leads", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "source"
    t.datetime "last_contacted_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "letters", force: :cascade do |t|
    t.string   "label"
    t.text     "contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "line_items", force: :cascade do |t|
    t.integer  "item_id"
    t.string   "item_type"
    t.integer  "shipment_id"
    t.integer  "qty"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "line_items", ["item_type", "item_id"], name: "index_line_items_on_item_type_and_item_id", using: :btree
  add_index "line_items", ["shipment_id"], name: "index_line_items_on_shipment_id", using: :btree

  create_table "shipments", force: :cascade do |t|
    t.string   "label"
    t.integer  "addressee_id"
    t.string   "addressee_type"
    t.date     "sent_on"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "shipments", ["addressee_type", "addressee_id"], name: "index_shipments_on_addressee_type_and_addressee_id", using: :btree

  create_table "shirts", force: :cascade do |t|
    t.string   "brand"
    t.string   "style"
    t.string   "color"
    t.string   "size"
    t.string   "qty"
    t.integer  "gender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "shirts", ["gender_id"], name: "index_shirts_on_gender_id", using: :btree

  create_table "sizes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "birthday"
    t.date     "enrolled_on"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "size_id"
    t.integer  "gender_id"
  end

  add_index "students", ["gender_id"], name: "index_students_on_gender_id", using: :btree
  add_index "students", ["instructor_id"], name: "index_students_on_instructor_id", using: :btree
  add_index "students", ["size_id"], name: "index_students_on_size_id", using: :btree

  add_foreign_key "enrollment_invites", "leads"
  add_foreign_key "interview_requests", "leads"
  add_foreign_key "line_items", "shipments"
  add_foreign_key "shirts", "genders"
  add_foreign_key "students", "genders"
  add_foreign_key "students", "instructors"
  add_foreign_key "students", "sizes"
end
