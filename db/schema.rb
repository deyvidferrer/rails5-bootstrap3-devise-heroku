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

ActiveRecord::Schema.define(version: 20171011135443) do

  create_table "browsers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bugs", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.string "url_reference"
    t.string "url_screenshot"
    t.integer "platform_id"
    t.integer "system_id"
    t.integer "browser_id"
    t.integer "severity_id"
    t.integer "priority_id"
    t.integer "user_id"
    t.text "note"
    t.text "extra"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "steps"
    t.text "expected"
    t.text "actual"
    t.text "description"
    t.index ["browser_id"], name: "index_bugs_on_browser_id"
    t.index ["platform_id"], name: "index_bugs_on_platform_id"
    t.index ["priority_id"], name: "index_bugs_on_priority_id"
    t.index ["severity_id"], name: "index_bugs_on_severity_id"
    t.index ["status_id"], name: "index_bugs_on_status_id"
    t.index ["system_id"], name: "index_bugs_on_system_id"
    t.index ["user_id"], name: "index_bugs_on_user_id"
  end

  create_table "platforms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "severities", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
