class CreateSteps < ActiveRecord::Migration[6.0]
  def change
    create_table :steps do |t|
      t.integer :intro
      t.integer :credit_card_debt
      t.integer :credit_card_debt_q
      t.integer :done_for_now
      t.integer :four01k_contribution
      t.integer :four01k_match
      t.integer :four01k_max_out_q
      t.integer :four01k_q
      t.integer :leftover_money
      t.integer :no_debt
      t.integer :pri_backdoor_roth_intro
      t.integer :pri_four01k_max
      t.integer :pri_post_debt
      t.integer :pri_roth_married_jointly_tween
      t.integer :pri_roth_married_not_jointly_tween
      t.integer :pri_roth_max
      t.integer :pri_roth_reg
      t.integer :pri_roth_single_tween
      t.integer :pri_taxable_brokerage_intro
      t.integer :roth_intro
      t.integer :roth_married_jointly_50_q
      t.integer :roth_married_jointly_income_q
      t.integer :roth_married_jointly_max_q
      t.integer :roth_married_jointly_min_q
      t.integer :roth_married_jointly_over_d
      t.integer :roth_married_jointly_q
      t.integer :roth_married_not_jointly_min_q
      t.integer :roth_married_not_jointly_over_d
      t.integer :roth_single_50_q
      t.integer :roth_single_income_q
      t.integer :roth_single_max_q
      t.integer :roth_single_min_q
      t.integer :roth_single_over_d
      t.integer :roth_single_q
      t.integer :roth_single_under_d

      t.timestamps
    end
  end
end
