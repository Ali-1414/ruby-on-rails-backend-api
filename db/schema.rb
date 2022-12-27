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

ActiveRecord::Schema[7.0].define(version: 2022_12_26_200326) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "Username"
    t.string "password"
    t.integer "user_id"
    t.integer "phone_number"
    t.string "shops_list"
    t.string "shop_owners"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buyers", force: :cascade do |t|
    t.string "Username"
    t.string "password"
    t.string "string"
    t.string "user_id"
    t.string "integer"
    t.integer "phone_number"
    t.float "Buyer_Id"
    t.string "shops"
    t.string "items"
    t.string "ordersList"
    t.string "order_details"
    t.integer "Item_quantities"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashiers", force: :cascade do |t|
    t.string "Username"
    t.string "password"
    t.integer "user_id"
    t.integer "phone_number"
    t.string "ordersList"
    t.string "order_details"
    t.string "order_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date "date"
    t.float "grand_total"
    t.string "status"
    t.string "orders"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.integer "ItemId"
    t.string "Item_name"
    t.string "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "Order_name"
    t.integer "orderId"
    t.string "status"
    t.float "grand_total"
    t.float "orderd_items"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shop_owners", force: :cascade do |t|
    t.string "Username"
    t.string "password"
    t.integer "user_id"
    t.integer "phone_number"
    t.integer "cashier"
    t.string "items"
    t.string "shop_owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.integer "shopId"
    t.string "category"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
