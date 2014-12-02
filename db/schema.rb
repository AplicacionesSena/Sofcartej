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

ActiveRecord::Schema.define(version: 20141201162453) do

  create_table "acabados", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articulos", force: true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "arti_file_name"
    t.string   "arti_content_type"
    t.integer  "arti_file_size"
    t.datetime "arti_updated_at"
  end

  create_table "bases_telas", force: true do |t|
    t.integer  "clasificacione_id"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bases_telas", ["clasificacione_id"], name: "index_bases_telas_on_clasificacione_id"

  create_table "clasificaciones", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", force: true do |t|
    t.string   "imagen"
    t.integer  "tela_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  add_index "images", ["tela_id"], name: "index_images_on_tela_id"

  create_table "products", force: true do |t|
    t.string   "name"
    t.date     "releasedOn"
    t.string   "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proveedores", force: true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "correo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pruebas", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referencias_comerciales", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "rol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telas", force: true do |t|
    t.string   "nombre"
    t.integer  "tiposTela_id"
    t.integer  "basesTela_id"
    t.integer  "proveedore_id"
    t.integer  "referenciasComerciale_id"
    t.string   "composicion"
    t.string   "anchoOrillo"
    t.integer  "uso_id"
    t.integer  "acabado_id"
    t.string   "peso"
    t.string   "pesoUnidad"
    t.string   "fichaTecnica"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_file_name"
    t.string   "document_content_type"
    t.integer  "document_file_size"
    t.datetime "document_updated_at"
    t.string   "datos",                    limit: nil
  end

  create_table "tipos_telas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                         null: false
    t.string   "crypted_password",              null: false
    t.string   "salt",                          null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre",            limit: nil
    t.string   "foto_file_name"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.datetime "foto_updated_at"
    t.integer  "role_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

  create_table "usos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "titulo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "vid_file_name"
    t.string   "vid_content_type"
    t.integer  "vid_file_size"
    t.datetime "vid_updated_at"
  end

end
