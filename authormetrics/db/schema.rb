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

ActiveRecord::Schema[7.0].define(version: 0) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", primary_key: "admin_id", id: :serial, force: :cascade do |t|
    t.string "username", limit: 255, null: false
    t.string "password", limit: 255, null: false
    t.index ["username"], name: "administrators_username_key", unique: true
  end

  create_table "author_ratings", primary_key: ["user_id", "author_id"], force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.integer "rating", null: false
    t.datetime "rating_timestamp", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.check_constraint "rating >= 1 AND rating <= 10", name: "author_ratings_rating_check"
  end

  create_table "authors", primary_key: "author_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "surname", limit: 255, null: false
    t.text "affiliations"
    t.string "interests", limit: 255, array: true
  end

  create_table "banned_users", primary_key: "user_id", id: :serial, force: :cascade do |t|
    t.date "start_date", default: -> { "CURRENT_DATE" }
    t.date "end_date", null: false
  end

  create_table "bans", id: false, force: :cascade do |t|
    t.serial "user_id", null: false
    t.serial "admin_id", null: false
    t.text "reason", null: false
  end

  create_table "comments", primary_key: ["publication_id", "user_id", "comment_timestamp"], force: :cascade do |t|
    t.string "publication_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.text "comment", null: false
    t.datetime "comment_timestamp", precision: nil, default: -> { "CURRENT_DATE" }, null: false
  end

  create_table "favorite_authors", primary_key: ["user_id", "author_id"], force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.serial "user_id", null: false
  end

  create_table "favorite_publications", primary_key: ["user_id", "publication_id"], force: :cascade do |t|
    t.string "publication_id", limit: 255, null: false
    t.serial "user_id", null: false
  end

  create_table "publication_ratings", primary_key: ["publication_id", "user_id"], force: :cascade do |t|
    t.string "publication_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.integer "rating", null: false
    t.datetime "rating_timestamp", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.check_constraint "rating >= 1 AND rating <= 10", name: "publication_ratings_rating_check"
  end

  create_table "publications", primary_key: "publication_id", id: { type: :string, limit: 255 }, force: :cascade do |t|
    t.string "title", limit: 255, null: false
    t.string "link", limit: 255
    t.text "published_on"
    t.integer "cited_by"
    t.integer "pub_year"
    t.check_constraint "cited_by IS NOT NULL OR cited_by >= 0", name: "publications_cited_by_check"
  end

  create_table "reviews", primary_key: ["author_id", "user_id"], force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.text "review", null: false
    t.datetime "review_timestamp", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
  end

  create_table "users", primary_key: "user_id", id: :serial, force: :cascade do |t|
    t.string "username", limit: 255, null: false
    t.string "password", limit: 255, null: false
    t.string "email", limit: 255, null: false
    t.string "name", limit: 255, null: false
    t.string "surname", limit: 255, null: false
    t.date "birth_date", null: false
    t.date "reg_date", default: -> { "CURRENT_DATE" }
    t.index ["email"], name: "users_email_key", unique: true
    t.index ["username"], name: "users_username_key", unique: true
  end

  create_table "written", primary_key: ["author_id", "publication_id"], force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.string "publication_id", limit: 255, null: false
  end

  add_foreign_key "author_ratings", "authors", primary_key: "author_id", name: "author_ratings_author_id_fkey"
  add_foreign_key "author_ratings", "users", primary_key: "user_id", name: "author_ratings_user_id_fkey"
  add_foreign_key "banned_users", "users", primary_key: "user_id", name: "banned_users_user_id_fkey"
  add_foreign_key "bans", "administrators", column: "admin_id", primary_key: "admin_id", name: "bans_admin_id_fkey"
  add_foreign_key "bans", "banned_users", column: "user_id", primary_key: "user_id", name: "bans_user_id_fkey"
  add_foreign_key "comments", "publications", primary_key: "publication_id", name: "comments_publication_id_fkey"
  add_foreign_key "comments", "users", primary_key: "user_id", name: "comments_user_id_fkey"
  add_foreign_key "favorite_authors", "authors", primary_key: "author_id", name: "favorite_authors_author_id_fkey"
  add_foreign_key "favorite_authors", "users", primary_key: "user_id", name: "favorite_authors_user_id_fkey"
  add_foreign_key "favorite_publications", "publications", primary_key: "publication_id", name: "favorite_publications_publication_id_fkey"
  add_foreign_key "favorite_publications", "users", primary_key: "user_id", name: "favorite_publications_user_id_fkey"
  add_foreign_key "publication_ratings", "publications", primary_key: "publication_id", name: "publication_ratings_publication_id_fkey"
  add_foreign_key "publication_ratings", "publications", primary_key: "publication_id", name: "publication_ratings_publication_id_fkey1"
  add_foreign_key "publication_ratings", "users", primary_key: "user_id", name: "publication_ratings_user_id_fkey"
  add_foreign_key "reviews", "authors", primary_key: "author_id", name: "reviews_author_id_fkey"
  add_foreign_key "reviews", "users", primary_key: "user_id", name: "reviews_user_id_fkey"
  add_foreign_key "written", "authors", primary_key: "author_id", name: "written_author_id_fkey"
  add_foreign_key "written", "publications", primary_key: "publication_id", name: "written_publication_id_fkey"
end