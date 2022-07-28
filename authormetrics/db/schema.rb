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
    t.integer "admin_id"
    t.string "username"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "author_ratings", force: :cascade do |t|
    t.string "author_id"
    t.integer "user_id"
    t.integer "rating"
    t.datetime "rating_timestamp", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string "author_id"
    t.string "name"
    t.string "surname"
    t.text "affiliations"
    t.text "interests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banned_users", force: :cascade do |t|
    t.integer "user_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bans", force: :cascade do |t|
    t.integer "user_id"
    t.integer "admin_id"
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "publication_id"
    t.integer "user_id"
    t.text "comment"
    t.datetime "comment_timestamp", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_authors", force: :cascade do |t|
    t.string "author_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorite_publications", force: :cascade do |t|
    t.string "publication_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publication_ratings", force: :cascade do |t|
    t.string "publication_id"
    t.integer "user_id"
    t.integer "rating"
    t.datetime "rating_timestamp", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string "publication_id"
    t.string "title"
    t.string "link"
    t.text "published_on"
    t.integer "cited_by"
    t.integer "pub_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "author_id"
    t.integer "user_id"
    t.text "review"
    t.datetime "review_timestamp", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "username"
    t.string "password"
    t.string "name"
    t.string "surname"
    t.date "birth_date"
    t.date "reg_date"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "writtens", force: :cascade do |t|
    t.string "author_id"
    t.string "publication_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
