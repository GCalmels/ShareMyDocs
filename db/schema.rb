# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141215120925) do

  create_table "bloc_parcours", force: true do |t|
    t.integer  "bloc_id"
    t.integer  "parcours_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blocs", force: true do |t|
    t.integer  "semestre_id"
    t.integer  "filiere_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  create_table "documents", force: true do |t|
    t.integer  "user_id"
    t.integer  "matiere_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
    t.text     "description"
    t.string   "url"
    t.integer  "nb_downloads"
  end

  add_index "documents", ["nom"], name: "index_documents_on_nom", unique: true

  create_table "filieres", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  add_index "filieres", ["nom"], name: "index_filieres_on_nom", unique: true

  create_table "lv2s", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
    t.string   "niveau"
  end

  create_table "matieres", force: true do |t|
    t.integer  "option_id"
    t.integer  "bloc_id"
    t.integer  "lv2_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  create_table "options", force: true do |t|
    t.integer  "semestre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  create_table "parcours", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
    t.integer  "numero"
  end

  add_index "parcours", ["nom"], name: "index_parcours_on_nom", unique: true
  add_index "parcours", ["numero"], name: "index_parcours_on_numero", unique: true

  create_table "semestres", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "numero"
  end

  create_table "users", force: true do |t|
    t.string   "login",               default: "",    null: false
    t.string   "encrypted_password",  default: "",    null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",               default: false
    t.integer  "filiere_id"
    t.integer  "parcours_id"
    t.integer  "option_id"
    t.integer  "lv2_id"
  end

  add_index "users", ["login"], name: "index_users_on_login", unique: true

end
