# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_10_192240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "journal_post_tags", force: :cascade do |t|
    t.bigint "journal_post_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["journal_post_id"], name: "index_journal_post_tags_on_journal_post_id"
    t.index ["tag_id"], name: "index_journal_post_tags_on_tag_id"
  end

  create_table "journal_posts", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "journal_id", null: false
    t.index ["journal_id"], name: "index_journal_posts_on_journal_id"
  end

  create_table "journals", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "journal_post_tags", "journal_posts"
  add_foreign_key "journal_post_tags", "tags"
  add_foreign_key "journal_posts", "journals"
  add_foreign_key "journals", "users"
end