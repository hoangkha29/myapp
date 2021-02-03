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

ActiveRecord::Schema.define(version: 20210125083823) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "commenter",  limit: 255
    t.text     "body",       limit: 65535
    t.integer  "article_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "status",     limit: 255
  end

  add_index "comments", ["article_id"], name: "index_comments_on_article_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.string "countrycode", limit: 255
    t.text   "countryname", limit: 65535
    t.string "code",        limit: 255
  end

  create_table "customers", primary_key: "customerNumber", force: :cascade do |t|
    t.string "customerName",     limit: 50, null: false
    t.string "contactLastName",  limit: 50, null: false
    t.string "contactFirstName", limit: 50, null: false
    t.string "phone",            limit: 50, null: false
    t.string "city",             limit: 50, null: false
    t.string "country",          limit: 50, null: false
  end

  create_table "offices", primary_key: "officeCode", force: :cascade do |t|
    t.string "city",         limit: 50, null: false
    t.string "phone",        limit: 50, null: false
    t.string "addressLine1", limit: 50, null: false
    t.string "addressLine2", limit: 50
    t.string "state",        limit: 50
    t.string "country",      limit: 50, null: false
    t.string "postalCode",   limit: 15, null: false
    t.string "territory",    limit: 10, null: false
  end

  create_table "products", primary_key: "productCode", force: :cascade do |t|
    t.string  "productName",        limit: 70,                             null: false
    t.string  "productLine",        limit: 50,                             null: false
    t.string  "productScale",       limit: 10,                             null: false
    t.string  "productVendor",      limit: 50,                             null: false
    t.text    "productDescription", limit: 65535,                          null: false
    t.integer "quantityInStock",    limit: 2,                              null: false
    t.decimal "buyPrice",                         precision: 10, scale: 2, null: false
    t.decimal "MSRP",                             precision: 10, scale: 2, null: false
  end

  add_index "products", ["productLine"], name: "productLine", using: :btree

  add_foreign_key "comments", "articles"
end
