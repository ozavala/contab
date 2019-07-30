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

ActiveRecord::Schema.define(version: 2019_07_30_000822) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_types", force: :cascade do |t|
    t.string "name"
    t.string "init_num"
    t.string "end_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gl_accounts", force: :cascade do |t|
    t.bigint "account_type_id"
    t.string "account_code"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.index ["account_type_id"], name: "index_gl_accounts_on_account_type_id"
    t.index ["parent_id"], name: "index_gl_accounts_on_parent_id"
  end

  create_table "gl_transactions", force: :cascade do |t|
    t.bigint "transaction_type_id"
    t.date "transaction_date"
    t.integer "to_party_id"
    t.integer "from_party_id"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transaction_type_id"], name: "index_gl_transactions_on_transaction_type_id"
  end

  create_table "transaction_details", force: :cascade do |t|
    t.bigint "gl_transaction_id"
    t.bigint "gl_account_id"
    t.decimal "amount"
    t.string "db_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gl_account_id"], name: "index_transaction_details_on_gl_account_id"
    t.index ["gl_transaction_id"], name: "index_transaction_details_on_gl_transaction_id"
  end

  create_table "transaction_types", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "gl_accounts", "account_types"
  add_foreign_key "gl_transactions", "transaction_types"
  add_foreign_key "transaction_details", "gl_accounts"
  add_foreign_key "transaction_details", "gl_transactions"
end
