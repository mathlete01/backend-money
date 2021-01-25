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

ActiveRecord::Schema.define(version: 2021_01_25_221532) do

  create_table "credit_card_debts", force: :cascade do |t|
    t.integer "amount"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_credit_card_debts_on_user_id"
  end

  create_table "rungs", force: :cascade do |t|
    t.integer "user_id", null: false
    t.boolean "rung_1"
    t.boolean "rung_2"
    t.boolean "rung_3"
    t.boolean "rung_4"
    t.boolean "rung_5"
    t.boolean "rung_6"
    t.boolean "rung_7"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_rungs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "monthly_income"
    t.integer "monthly_bills"
    t.integer "leftover_money"
    t.boolean "four01k"
    t.float "four01k_match"
    t.float "four01k_contribution"
    t.integer "credit_card_debt"
    t.boolean "single"
    t.boolean "singleMax"
    t.boolean "singleBetween"
    t.boolean "earned_income"
    t.boolean "below_50"
    t.boolean "below_70_half"
    t.boolean "roth_eligable"
    t.integer "roth_max"
    t.boolean "filing_jointly"
    t.boolean "married_max"
    t.boolean "married_between"
    t.boolean "earn_less_than_min"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "monthly_spending"
    t.string "current_step"
  end

  add_foreign_key "credit_card_debts", "users"
  add_foreign_key "rungs", "users"
end
