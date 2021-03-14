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

ActiveRecord::Schema.define(version: 20210314075906) do

  create_table "carts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sweet_id"
    t.integer  "cart_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "family_name"
    t.string   "given_name"
    t.string   "ruby_family_name"
    t.string   "ruby_given_name"
    t.integer  "postal_code"
    t.string   "address"
    t.string   "tel"
    t.string   "status"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "deliveries", force: :cascade do |t|
    t.integer  "delivery_postal_code"
    t.string   "delivery_address"
    t.string   "address_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "manager_email"
    t.string   "manager_password"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "in_tax_price"
    t.integer  "amount"
    t.integer  "making_status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "order_status"
    t.string   "pay_way"
    t.integer  "postage"
    t.integer  "total_price"
    t.string   "delivery_address"
    t.integer  "delivery_postal_code"
    t.string   "address_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "sweets", force: :cascade do |t|
    t.integer  "genre_id"
    t.string   "sweet_name"
    t.text     "content"
    t.string   "image"
    t.string   "sell_status"
    t.integer  "no_tax_price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
