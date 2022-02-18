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

ActiveRecord::Schema.define(version: 2022_02_05_184616) do

  create_table "baskets", force: :cascade do |t|
    t.integer "buyer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_baskets_on_buyer_id"
  end

  create_table "baskets_valuables", id: false, force: :cascade do |t|
    t.integer "basket_id", null: false
    t.integer "valuable_id", null: false
    t.index ["basket_id", "valuable_id"], name: "index_baskets_valuables_on_basket_id_and_valuable_id"
  end

  create_table "buyers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.integer "buyer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "in_session", default: false
    t.string "token"
    t.index ["buyer_id"], name: "index_users_on_buyer_id"
  end

  create_table "valuables", force: :cascade do |t|
    t.string "title"
    t.float "value"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "shop_status", default: false
  end

  add_foreign_key "baskets", "buyers"
  add_foreign_key "users", "buyers"
end
