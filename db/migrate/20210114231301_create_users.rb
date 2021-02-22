class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.integer :monthly_income
      t.integer :monthly_bills
      t.integer :leftover_money
      t.boolean :four01k
      t.integer :four01k_match
      t.integer :four01k_contribution
      t.integer :credit_card_debt
      t.boolean :single
      t.boolean :singleMax
      t.boolean :singleBetween
      t.boolean :earned_income
      t.boolean :below_50
      t.boolean :below_70_half
      t.boolean :roth_eligable
      t.integer :roth_max
      t.boolean :filing_jointly
      t.boolean :married_max
      t.boolean :married_between
      t.boolean :earn_less_than_min

      t.timestamps
    end
  end
end
