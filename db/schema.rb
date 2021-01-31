# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_31_151251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "isbn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books_groups", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "group_id", null: false
    t.index ["book_id"], name: "index_books_groups_on_book_id"
    t.index ["group_id"], name: "index_books_groups_on_group_id"
  end

  create_table "decisions", force: :cascade do |t|
    t.bigint "group_id"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_decisions_on_group_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "date_time", null: false
    t.string "meeting_url", null: false
    t.string "name"
    t.bigint "group_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "book_id"
    t.index ["book_id"], name: "index_events_on_book_id"
    t.index ["group_id"], name: "index_events_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "groups_users", force: :cascade do |t|
    t.bigint "group_id"
    t.bigint "user_id"
    t.string "role"
    t.index ["group_id"], name: "index_groups_users_on_group_id"
    t.index ["user_id"], name: "index_groups_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
  end

  add_foreign_key "books_groups", "books", on_delete: :cascade
  add_foreign_key "books_groups", "groups", on_delete: :cascade
  add_foreign_key "decisions", "groups", on_delete: :cascade
  add_foreign_key "events", "books", on_delete: :cascade
  add_foreign_key "events", "groups"
  add_foreign_key "groups_users", "groups"
  add_foreign_key "groups_users", "users"
end
