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

ActiveRecord::Schema.define(version: 2024_08_21_135052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_buffercache"
  enable_extension "pg_stat_statements"
  enable_extension "plpgsql"

  create_table "article_statuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "article_statuses_id", default: 1
    t.index ["article_statuses_id"], name: "index_articles_on_article_statuses_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "rolename"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "login", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "role_id", default: 1
    t.index ["login"], name: "index_users_on_login", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "articles", "article_statuses", column: "article_statuses_id"
  add_foreign_key "users", "roles"
end
