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

ActiveRecord::Schema.define(version: 20170816193355) do

  create_table "agents", force: :cascade do |t|
    t.string   "last_name"
    t.string   "name"
    t.integer  "dni"
    t.integer  "position_id"
    t.date     "up_date"
    t.date     "down_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["position_id"], name: "index_agents_on_position_id"
  end

  create_table "animal_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string   "description"
    t.integer  "animal_type_id"
    t.integer  "average_value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["animal_type_id"], name: "index_animals_on_animal_type_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "province"
    t.integer  "cp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guides", force: :cascade do |t|
    t.integer  "lot_id"
    t.integer  "city_id"
    t.date     "arrival_date"
    t.integer  "transport_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["city_id"], name: "index_guides_on_city_id"
    t.index ["lot_id"], name: "index_guides_on_lot_id"
    t.index ["transport_id"], name: "index_guides_on_transport_id"
  end

  create_table "lot_details", force: :cascade do |t|
    t.integer  "lot_id"
    t.integer  "animal_id"
    t.integer  "quantity"
    t.string   "observation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["animal_id"], name: "index_lot_details_on_animal_id"
    t.index ["lot_id"], name: "index_lot_details_on_lot_id"
  end

  create_table "lots", force: :cascade do |t|
    t.string   "dte"
    t.integer  "turn_id"
    t.integer  "producer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "close_code"
    t.index ["producer_id"], name: "index_lots_on_producer_id"
    t.index ["turn_id"], name: "index_lots_on_turn_id"
  end

  create_table "places", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string   "name"
    t.date     "up_date"
    t.date     "down_date"
    t.integer  "city_id"
    t.string   "observation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "active"
    t.index ["city_id"], name: "index_producers_on_city_id"
  end

  create_table "product_details", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "weight"
    t.integer  "weight_control"
    t.string   "observation"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["product_id"], name: "index_product_details_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer  "lot_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["lot_id"], name: "index_products_on_lot_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["name"], name: "index_roles_on_name"
  end

  create_table "sub_product_details", force: :cascade do |t|
    t.integer  "sub_product_id"
    t.integer  "sub_product_type_id"
    t.integer  "weight"
    t.integer  "weight_control"
    t.string   "observation"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["sub_product_id"], name: "index_sub_product_details_on_sub_product_id"
    t.index ["sub_product_type_id"], name: "index_sub_product_details_on_sub_product_type_id"
  end

  create_table "sub_product_types", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sub_products", force: :cascade do |t|
    t.integer  "lot_id"
    t.string   "observartion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["lot_id"], name: "index_sub_products_on_lot_id"
  end

  create_table "transports", force: :cascade do |t|
    t.integer  "coupled"
    t.integer  "capacity"
    t.string   "plate"
    t.string   "model"
    t.string   "driver"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turn_details", force: :cascade do |t|
    t.integer  "turn_id"
    t.integer  "agent_id"
    t.integer  "place_id"
    t.integer  "position_id"
    t.string   "observation"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["agent_id"], name: "index_turn_details_on_agent_id"
    t.index ["place_id"], name: "index_turn_details_on_place_id"
    t.index ["position_id"], name: "index_turn_details_on_position_id"
    t.index ["turn_id"], name: "index_turn_details_on_turn_id"
  end

  create_table "turns", force: :cascade do |t|
    t.date     "date"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
  end

end
