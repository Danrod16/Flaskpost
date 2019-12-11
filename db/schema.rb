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

ActiveRecord::Schema.define(version: 2019_12_11_172832) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.string "status"
    t.bigint "profile_id"
    t.bigint "posting_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["posting_id"], name: "index_matches_on_posting_id"
    t.index ["profile_id"], name: "index_matches_on_profile_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "match_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_messages_on_match_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "postings", force: :cascade do |t|
    t.string "field"
    t.string "job_title"
    t.string "contract_types", array: true
    t.string "experience"
    t.string "languages", array: true
    t.string "locations", array: true
    t.string "description"
    t.integer "salary_max"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_postings_on_company_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "field"
    t.string "job_title"
    t.string "contract_types", array: true
    t.string "experience"
    t.string "languages", array: true
    t.string "locations", array: true
    t.string "description"
    t.integer "salary_min"
    t.integer "salary_max"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.bigint "company_id"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "matches", "postings"
  add_foreign_key "matches", "profiles"
  add_foreign_key "messages", "matches"
  add_foreign_key "messages", "users"
  add_foreign_key "postings", "companies"
  add_foreign_key "profiles", "users"
  add_foreign_key "users", "companies"
end
