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

ActiveRecord::Schema.define(version: 2023_02_14_125843) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "request_id"
    t.text "content"
    t.datetime "sent_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments_requests", force: :cascade do |t|
    t.integer "comment_id"
    t.integer "request_id"
  end

  create_table "comments_users", force: :cascade do |t|
    t.integer "comment_id"
    t.integer "user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "receiver_id"
    t.text "content"
    t.datetime "sent_time"
    t.boolean "is_read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "request_id"
  end

  create_table "messages_users", force: :cascade do |t|
    t.integer "message_id"
    t.integer "user_id"
  end

  create_table "offers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "request_id"
    t.integer "offer_amount"
    t.string "status", default: "Open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers_users", force: :cascade do |t|
    t.integer "offer_id"
    t.integer "user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "location"
    t.datetime "time"
    t.text "description"
    t.decimal "budget"
    t.string "status", default: "Open"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests_users", force: :cascade do |t|
    t.integer "request_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
