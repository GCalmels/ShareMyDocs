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

ActiveRecord::Schema.define(version: 20150114100307) do

  create_table "blocs", force: true do |t|
    t.integer  "semestre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  create_table "document_types", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  create_table "documents", force: true do |t|
    t.integer  "user_id"
    t.integer  "matiere_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.integer  "document_type_id"
  end

  add_index "documents", ["document_type_id"], name: "index_documents_on_document_type_id"

  create_table "filieres", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  add_index "filieres", ["nom"], name: "index_filieres_on_nom", unique: true

  create_table "matieres", force: true do |t|
    t.integer  "bloc_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nom"
  end

  create_table "semestres", force: true do |t|
    t.integer "filiere_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string  "nom"
  end

  create_table "user_document_associations", force: true do |t|
    t.integer  "user_id"
    t.integer  "document_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_document_associations", ["document_id"], name: "index_user_document_associations_on_document_id"
  add_index "user_document_associations", ["user_id", "document_id"], name: "index_user_document_associations_on_user_id_and_document_id", unique: true
  add_index "user_document_associations", ["user_id"], name: "index_user_document_associations_on_user_id"

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
  end

  add_index "users", ["login"], name: "index_users_on_login", unique: true

end
