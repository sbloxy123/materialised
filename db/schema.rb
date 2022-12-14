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

ActiveRecord::Schema[7.0].define(version: 2022_12_13_134758) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "baskets", force: :cascade do |t|
    t.bigint "material_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.bigint "order_id", null: false
    t.index ["material_id"], name: "index_baskets_on_material_id"
    t.index ["order_id"], name: "index_baskets_on_order_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "vehicle_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "plate_number"
    t.integer "rating"
    t.float "latitude"
    t.float "longitude"
    t.string "driver_img"
  end

  create_table "material_suppliers", force: :cascade do |t|
    t.bigint "material_id", null: false
    t.bigint "supplier_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_material_suppliers_on_material_id"
    t.index ["supplier_id"], name: "index_material_suppliers_on_supplier_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "description"
    t.integer "length"
    t.integer "width"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "suppliers_id"
    t.string "image"
    t.integer "price_cents", default: 0, null: false
    t.index ["suppliers_id"], name: "index_materials_on_suppliers_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "site_location"
    t.bigint "driver_id"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.integer "amount_cents", default: 0, null: false
    t.string "checkout_session_id"
    t.bigint "supplier_id"
    t.string "state"
    t.index ["driver_id"], name: "index_orders_on_driver_id"
    t.index ["supplier_id"], name: "index_orders_on_supplier_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.binary "image"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "baskets", "materials"
  add_foreign_key "baskets", "orders"
  add_foreign_key "material_suppliers", "materials"
  add_foreign_key "material_suppliers", "suppliers"
  add_foreign_key "orders", "drivers"
  add_foreign_key "orders", "users"
end
