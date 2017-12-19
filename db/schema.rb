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

ActiveRecord::Schema.define(version: 20171114233833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "product_groups", force: :cascade do |t|
    t.string "slug"
    t.string "name", null: false
    t.string "description"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_product_groups_on_slug", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.string "slug"
    t.bigint "product_group_id"
    t.string "name"
    t.text "description"
    t.string "code", null: false
    t.date "receipt_date"
    t.integer "stock_balance"
    t.string "rack"
    t.string "row"
    t.string "shelf"
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.integer "sale_price_cents", default: 0, null: false
    t.string "sale_price_currency", default: "USD", null: false
    t.integer "calculated_price_cents", default: 0, null: false
    t.string "calculated_price_currency", default: "USD", null: false
    t.integer "purchase_price_cents", default: 0, null: false
    t.string "purchase_price_currency", default: "USD", null: false
    t.text "comment"
    t.integer "height"
    t.integer "total_amount"
    t.string "showcase"
    t.string "measured"
    t.string "workshop"
    t.string "ratio"
    t.text "hidden_comments"
    t.string "manufacturer"
    t.string "category"
    t.string "db_date"
    t.integer "remaining"
    t.integer "manual_correction"
    t.datetime "deleted_at"
    t.string "s"
    t.string "t"
    t.string "u"
    t.string "x"
    t.string "y"
    t.string "z"
    t.string "aa"
    t.string "ad"
    t.index ["code", "name"], name: "index_products_on_code_and_name", unique: true
    t.index ["product_group_id"], name: "index_products_on_product_group_id"
  end

  add_foreign_key "products", "product_groups"
end
