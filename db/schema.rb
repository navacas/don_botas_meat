# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_26_223718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "nombre"
    t.integer "telefono"
    t.string "colonia"
    t.string "calle"
    t.integer "numero_casa"
    t.text "referencia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_histories", force: :cascade do |t|
    t.datetime "fecha"
    t.bigint "client_id", null: false
    t.bigint "product_id", null: false
    t.bigint "pedido_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_order_histories_on_client_id"
    t.index ["pedido_id"], name: "index_order_histories_on_pedido_id"
    t.index ["product_id"], name: "index_order_histories_on_product_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer "cantidad"
    t.integer "precio"
    t.integer "total"
    t.bigint "client_id", null: false
    t.bigint "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_pedidos_on_client_id"
    t.index ["product_id"], name: "index_pedidos_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "order_histories", "clients"
  add_foreign_key "order_histories", "pedidos"
  add_foreign_key "order_histories", "products"
  add_foreign_key "pedidos", "clients"
  add_foreign_key "pedidos", "products"
end
