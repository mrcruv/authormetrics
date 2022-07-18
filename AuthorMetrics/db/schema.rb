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

  create_table "amministratori", id: :serial, force: :cascade do |t|
    t.string "username", limit: 25, null: false
    t.string "psw", limit: 30, null: false
  end

  create_table "articoli", primary_key: "_id", id: { type: :string, limit: 25 }, force: :cascade do |t|
    t.text "titolo", null: false
    t.text "pubblication", null: false
    t.integer "cited_by", null: false
    t.integer "anno_pubblicazione", null: false
    t.check_constraint "cited_by >= 0", name: "articoli_cited_by_check"
  end

  create_table "articoli_preferiti", primary_key: ["articoli_id", "utenti_id"], force: :cascade do |t|
    t.string "articoli_id", limit: 25, null: false
    t.serial "utenti_id", null: false
  end

  create_table "autori", primary_key: "_id", id: { type: :string, limit: 25 }, force: :cascade do |t|
    t.string "nome_cognome", limit: 50, null: false
    t.string "interest", limit: 25, array: true
    t.text "affiliazioni"
  end

  create_table "autori_preferiti", primary_key: ["utenti_id", "autori_id"], force: :cascade do |t|
    t.string "autori_id", limit: 25, null: false
    t.serial "utenti_id", null: false
  end

  create_table "bans", primary_key: ["utenti_id", "amministratori_id"], force: :cascade do |t|
    t.serial "utenti_id", null: false
    t.serial "amministratori_id", null: false
    t.date "da", null: false
    t.date "a", null: false
  end

  create_table "commenti", primary_key: ["articoli_id", "utenti_id", "data_commento", "ora"], force: :cascade do |t|
    t.string "articoli_id", limit: 25, null: false
    t.serial "utenti_id", null: false
    t.text "testo", null: false
    t.date "data_commento", default: -> { "CURRENT_DATE" }, null: false
    t.time "ora", null: false
  end

  create_table "rating_articoli", primary_key: ["articoli_id", "utenti_id"], force: :cascade do |t|
    t.string "articoli_id", limit: 25, null: false
    t.serial "utenti_id", null: false
    t.integer "rating", null: false
    t.date "data_valutazione", null: false
    t.check_constraint "rating > 0 AND rating < 11", name: "rating_articoli_rating_check"
  end

  create_table "rating_autori", primary_key: ["utenti_id", "autori_id"], force: :cascade do |t|
    t.string "autori_id", limit: 25, null: false
    t.serial "utenti_id", null: false
    t.integer "rating", null: false
    t.date "data_valutazione", null: false
    t.check_constraint "rating > 0 AND rating < 11", name: "rating_autori_rating_check"
  end

  create_table "recensioni_autori", primary_key: ["autori_id", "utenti_id"], force: :cascade do |t|
    t.string "autori_id", limit: 25, null: false
    t.serial "utenti_id", null: false
    t.text "recensione", null: false
    t.date "data_recensione", null: false
  end

  create_table "scritti", primary_key: ["autori_id", "articoli_id"], force: :cascade do |t|
    t.string "autori_id", limit: 25, null: false
    t.string "articoli_id", limit: 25, null: false
  end

  create_table "utenti", id: :serial, force: :cascade do |t|
    t.string "username", limit: 25, null: false
    t.string "psw", limit: 30, null: false
    t.string "email", limit: 45, null: false
    t.string "nome", limit: 20, null: false
    t.string "cognome", limit: 20, null: false
    t.date "data_nascita", null: false
    t.timestamptz "data_iscrizione", default: -> { "CURRENT_TIMESTAMP" }
    t.index ["username", "email"], name: "utenti_username_email_key", unique: true
  end

  add_foreign_key "articoli_preferiti", "articoli", primary_key: "_id", name: "articoli_preferiti_articoli_id_fkey"
  add_foreign_key "articoli_preferiti", "utenti", name: "articoli_preferiti_utenti_id_fkey"
  add_foreign_key "autori_preferiti", "autori", primary_key: "_id", name: "autori_preferiti_autori_id_fkey"
  add_foreign_key "autori_preferiti", "utenti", name: "autori_preferiti_utenti_id_fkey"
  add_foreign_key "bans", "amministratori", name: "bans_amministratori_id_fkey"
  add_foreign_key "bans", "utenti", name: "bans_utenti_id_fkey"
  add_foreign_key "commenti", "articoli", primary_key: "_id", name: "commenti_articoli_id_fkey"
  add_foreign_key "commenti", "utenti", name: "commenti_utenti_id_fkey"
  add_foreign_key "rating_articoli", "articoli", primary_key: "_id", name: "rating_articoli_articoli_id_fkey"
  add_foreign_key "rating_articoli", "utenti", name: "rating_articoli_utenti_id_fkey"
  add_foreign_key "rating_autori", "autori", primary_key: "_id", name: "rating_autori_autori_id_fkey"
  add_foreign_key "rating_autori", "utenti", name: "rating_autori_utenti_id_fkey"
  add_foreign_key "recensioni_autori", "autori", primary_key: "_id", name: "recensioni_autori_autori_id_fkey"
  add_foreign_key "recensioni_autori", "utenti", name: "recensioni_autori_utenti_id_fkey"
  add_foreign_key "scritti", "articoli", primary_key: "_id", name: "scritti_articoli_id_fkey"
  add_foreign_key "scritti", "autori", primary_key: "_id", name: "scritti_autori_id_fkey"
end
