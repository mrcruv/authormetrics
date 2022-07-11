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

ActiveRecord::Schema[7.0].define(version: 2022_07_09_161049) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articolo", primary_key: "_id", id: { type: :string, limit: 25 }, force: :cascade do |t|
    t.text "titolo", null: false
    t.text "pubblication", null: false
    t.integer "cited_by", null: false
    t.integer "anno_pubblicazione", null: false
    t.check_constraint "cited_by >= 0", name: "articolo_cited_by_check"
  end

  create_table "articolo_preferito", primary_key: ["articolo_id", "utente_id"], force: :cascade do |t|
    t.string "articolo_id", limit: 25, null: false
    t.serial "utente_id", null: false
  end

  create_table "author", primary_key: "_id", id: { type: :string, limit: 25 }, force: :cascade do |t|
    t.string "nome_cognome", limit: 50, null: false
    t.string "interest", limit: 25, array: true
    t.text "affiliazioni"
  end

  create_table "autore_preferito", primary_key: ["utente_id", "author_id"], force: :cascade do |t|
    t.string "author_id", limit: 25, null: false
    t.serial "utente_id", null: false
  end

  create_table "commento", primary_key: ["articolo_id", "utente_id", "data_commento", "ora"], force: :cascade do |t|
    t.string "articolo_id", limit: 25, null: false
    t.serial "utente_id", null: false
    t.text "testo", null: false
    t.date "data_commento", default: -> { "CURRENT_DATE" }, null: false
    t.time "ora", null: false
  end

  create_table "rating_articolo", primary_key: ["articolo_id", "utente_id"], force: :cascade do |t|
    t.string "articolo_id", limit: 25, null: false
    t.serial "utente_id", null: false
    t.integer "rating", null: false
    t.date "data_valutazione", null: false
    t.check_constraint "rating > 0 AND rating < 11", name: "rating_articolo_rating_check"
  end

  create_table "rating_autore", primary_key: ["utente_id", "author_id"], force: :cascade do |t|
    t.string "author_id", limit: 25, null: false
    t.serial "utente_id", null: false
    t.integer "rating", null: false
    t.date "data_valutazione", null: false
    t.check_constraint "rating > 0 AND rating < 11", name: "rating_autore_rating_check"
  end

  create_table "recensione_autore", primary_key: ["author_id", "utente_id"], force: :cascade do |t|
    t.string "author_id", limit: 25, null: false
    t.serial "utente_id", null: false
    t.text "recensione", null: false
    t.date "data_recensione", null: false
  end

  create_table "scritto", primary_key: ["author_id", "articolo_id"], force: :cascade do |t|
    t.string "author_id", limit: 25, null: false
    t.string "articolo_id", limit: 25, null: false
  end

  create_table "utente", id: :serial, force: :cascade do |t|
    t.string "username", limit: 25, null: false
    t.string "psw", limit: 30, null: false
    t.string "email", limit: 45, null: false
    t.string "nome", limit: 20, null: false
    t.string "cognome", limit: 20, null: false
    t.date "data_nascita", null: false
    t.timestamptz "data_iscrizione", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["username", "email"], name: "utente_username_email_key", unique: true
  end


  add_foreign_key "articolo_preferito", "articolo", primary_key: "_id", name: "articolo_preferito_articolo_id_fkey"
  add_foreign_key "articolo_preferito", "utente", name: "articolo_preferito_utente_id_fkey"
  add_foreign_key "autore_preferito", "author", primary_key: "_id", name: "autore_preferito_author_id_fkey"
  add_foreign_key "autore_preferito", "utente", name: "autore_preferito_utente_id_fkey"
  add_foreign_key "commento", "articolo", primary_key: "_id", name: "commento_articolo_id_fkey"
  add_foreign_key "commento", "utente", name: "commento_utente_id_fkey"
  add_foreign_key "rating_articolo", "articolo", primary_key: "_id", name: "rating_articolo_articolo_id_fkey"
  add_foreign_key "rating_articolo", "utente", name: "rating_articolo_utente_id_fkey"
  add_foreign_key "rating_autore", "author", primary_key: "_id", name: "rating_autore_author_id_fkey"
  add_foreign_key "rating_autore", "utente", name: "rating_autore_utente_id_fkey"
  add_foreign_key "recensione_autore", "author", primary_key: "_id", name: "recensione_autore_author_id_fkey"
  add_foreign_key "recensione_autore", "utente", name: "recensione_autore_utente_id_fkey"
  add_foreign_key "scritto", "articolo", primary_key: "_id", name: "scritto_articolo_id_fkey"
  add_foreign_key "scritto", "author", primary_key: "_id", name: "scritto_author_id_fkey"
end
