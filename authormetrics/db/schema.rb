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

ActiveRecord::Schema[7.0].define(version: 2022_07_27_152600) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.serial "administrator_id", null: false
    t.string "username", limit: 255, null: false
    t.string "password", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id"], name: "index_administrators_on_administrator_id", unique: true
    t.index ["username"], name: "index_administrators_on_username", unique: true
  end

  create_table "author_ratings", force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.integer "rating", null: false
    t.datetime "rating_timestamp", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "author_id"], name: "index_author_ratings_on_user_id_and_author_id", unique: true
    t.check_constraint "rating = ANY (ARRAY[1, 2, 3, 4, 5])", name: "check_author_ratings_on_rating"
  end

  create_table "authors", force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.string "name", limit: 255, null: false
    t.string "surname", limit: 255, null: false
    t.text "affiliations"
    t.string "interests", limit: 255, array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_authors_on_author_id", unique: true
  end

  create_table "banned_users", force: :cascade do |t|
    t.serial "user_id", null: false
    t.date "start_date", default: -> { "CURRENT_DATE" }, null: false
    t.date "end_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_banned_users_on_user_id", unique: true
  end

  create_table "bans", force: :cascade do |t|
    t.serial "user_id", null: false
    t.serial "administrator_id", null: false
    t.text "reason", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["administrator_id", "user_id"], name: "index_bans_on_administrator_id_and_user_id", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.string "publication_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.text "comment", null: false
    t.datetime "comment_timestamp", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_timestamp", "user_id", "publication_id"], name: "index_comments", unique: true
  end

  create_table "favorite_authors", force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "author_id"], name: "index_favorite_authors_on_user_id_and_author_id", unique: true
  end

  create_table "favorite_publications", force: :cascade do |t|
    t.string "publication_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "publication_id"], name: "index_favorite_publications_on_user_id_and_publication_id", unique: true
  end

  create_table "publication_ratings", force: :cascade do |t|
    t.string "publication_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.integer "rating", null: false
    t.datetime "rating_timestamp", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "publication_id"], name: "index_publication_ratings_on_user_id_and_publication_id", unique: true
    t.check_constraint "rating = ANY (ARRAY[1, 2, 3, 4, 5])", name: "check_publication_ratings_on_rating"
  end

  create_table "publications", force: :cascade do |t|
    t.string "publication_id", limit: 255, null: false
    t.string "title", limit: 255, null: false
    t.string "link", limit: 255
    t.text "published_on"
    t.integer "cited_by"
    t.integer "pub_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publication_id"], name: "index_publications_on_publication_id", unique: true
    t.check_constraint "cited_by IS NULL OR cited_by >= 0", name: "check_publications_on_cited_by"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.serial "user_id", null: false
    t.text "review", null: false
    t.datetime "review_timestamp", precision: nil, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "author_id"], name: "index_reviews_on_user_id_and_author_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.serial "user_id", null: false
    t.string "username", limit: 255, null: false
    t.string "email", limit: 255, null: false
    t.string "password", limit: 255, null: false
    t.string "name", limit: 255, null: false
    t.string "surname", limit: 255, null: false
    t.date "birth_date", null: false
    t.date "reg_date", default: -> { "CURRENT_DATE" }, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["user_id"], name: "index_users_on_user_id", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  create_table "writtens", force: :cascade do |t|
    t.string "author_id", limit: 255, null: false
    t.string "publication_id", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publication_id", "author_id"], name: "index_writtens_on_publication_id_and_author_id", unique: true
  end

  add_foreign_key "author_ratings", "authors", primary_key: "author_id", name: "author_ratings_fkey_authors"
  add_foreign_key "author_ratings", "users", primary_key: "user_id", name: "author_ratings_fkey_users"
  add_foreign_key "banned_users", "users", primary_key: "user_id", name: "banned_users_fkey_users"
  add_foreign_key "bans", "administrators", primary_key: "administrator_id", name: "bans_fkey_administrators"
  add_foreign_key "bans", "users", primary_key: "user_id", name: "bans_fkey_users"
  add_foreign_key "comments", "publications", primary_key: "publication_id", name: "comments_fkey_publications"
  add_foreign_key "comments", "users", primary_key: "user_id", name: "comments_fkey_users"
  add_foreign_key "favorite_authors", "authors", primary_key: "author_id", name: "favorite_authors_fkey_authors"
  add_foreign_key "favorite_authors", "users", primary_key: "user_id", name: "favorite_authors_fkey_users"
  add_foreign_key "favorite_publications", "publications", primary_key: "publication_id", name: "favorite_publications_fkey_publications"
  add_foreign_key "favorite_publications", "users", primary_key: "user_id", name: "favorite_publications_fkey_users"
  add_foreign_key "publication_ratings", "publications", primary_key: "publication_id", name: "publication_ratings_fkey_publications"
  add_foreign_key "publication_ratings", "users", primary_key: "user_id", name: "publication_ratings_fkey_users"
  add_foreign_key "reviews", "authors", primary_key: "author_id", name: "reviews_fkey_authors"
  add_foreign_key "reviews", "users", primary_key: "user_id", name: "reviews_fkey_users"
  add_foreign_key "writtens", "authors", primary_key: "author_id", name: "writtens_fkey_authors"
  add_foreign_key "writtens", "publications", primary_key: "publication_id", name: "writtens_fkey_publications"
end
