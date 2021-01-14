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

ActiveRecord::Schema.define(version: 2021_01_14_231814) do

  create_table "credit_card_debts", force: :cascade do |t|
    t.integer "amount"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_credit_card_debts_on_user_id"
  end

  create_table "prompts", force: :cascade do |t|
    t.integer "comesFrom"
    t.integer "continueTo"
    t.boolean "answer"
    t.integer "yesTo"
    t.integer "noTo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.integer "monthly_income"
    t.integer "monthly_bills"
    t.integer "leftover_money"
    t.boolean "four01k"
    t.integer "four01k_match"
    t.integer "four01k_contribution"
    t.boolean "credit_card_debt"
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
  end

  add_foreign_key "credit_card_debts", "users"
end
