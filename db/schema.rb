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

ActiveRecord::Schema.define(version: 2021_02_22_020644) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clicks", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "steps_id", null: false
    t.integer "rows_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["rows_id"], name: "index_clicks_on_rows_id"
    t.index ["steps_id"], name: "index_clicks_on_steps_id"
    t.index ["user_id"], name: "index_clicks_on_user_id"
  end

  create_table "credit_card_debts", force: :cascade do |t|
    t.integer "amount"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_credit_card_debts_on_user_id"
  end

  create_table "rows", force: :cascade do |t|
    t.integer "row_1"
    t.integer "row_2"
    t.integer "row_3"
    t.integer "row_4"
    t.integer "row_5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer "intro"
    t.integer "credit_card_debt"
    t.integer "credit_card_debt_q"
    t.integer "done_for_now"
    t.integer "four01k_contribution"
    t.integer "four01k_match"
    t.integer "four01k_max_out_q"
    t.integer "four01k_q"
    t.integer "leftover_money"
    t.integer "no_debt"
    t.integer "pri_backdoor_roth_intro"
    t.integer "pri_four01k_max"
    t.integer "pri_post_debt"
    t.integer "pri_roth_married_jointly_tween"
    t.integer "pri_roth_married_not_jointly_tween"
    t.integer "pri_roth_max"
    t.integer "pri_roth_reg"
    t.integer "pri_roth_single_tween"
    t.integer "pri_taxable_brokerage_intro"
    t.integer "roth_intro"
    t.integer "roth_married_jointly_50_q"
    t.integer "roth_married_jointly_income_q"
    t.integer "roth_married_jointly_max_q"
    t.integer "roth_married_jointly_min_q"
    t.integer "roth_married_jointly_over_d"
    t.integer "roth_married_jointly_q"
    t.integer "roth_married_not_jointly_min_q"
    t.integer "roth_married_not_jointly_over_d"
    t.integer "roth_single_50_q"
    t.integer "roth_single_income_q"
    t.integer "roth_single_max_q"
    t.integer "roth_single_min_q"
    t.integer "roth_single_over_d"
    t.integer "roth_single_q"
    t.integer "roth_single_under_d"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "username"
    t.text "password_digest"
    t.integer "monthly_income"
    t.integer "monthly_bills"
    t.integer "leftover_money"
    t.boolean "four01k"
    t.float "four01k_match"
    t.float "four01k_contribution"
    t.integer "credit_card_debt"
    t.boolean "single"
    t.boolean "single_max"
    t.boolean "single_between"
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
    t.boolean "four01k_max_out"
    t.text "current_step"
    t.integer "cc_1"
    t.integer "cc_2"
    t.integer "cc_3"
    t.text "pay_schedule"
    t.integer "magi"
  end

  add_foreign_key "clicks", "rows", column: "rows_id"
  add_foreign_key "clicks", "steps", column: "steps_id"
  add_foreign_key "clicks", "users"
  add_foreign_key "credit_card_debts", "users"
end
