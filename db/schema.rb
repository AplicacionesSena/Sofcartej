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

ActiveRecord::Schema.define(version: 20141104182539) do

  create_table "acabados", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "proveedores", force: true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "correo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "referencias_comerciales", force: true do |t|
    t.string   "nombre"
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
  end

  create_table "tipos_telas", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
