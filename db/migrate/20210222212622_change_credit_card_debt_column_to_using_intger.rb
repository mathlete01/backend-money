class ChangeCreditCardDebtColumnToUsingIntger < ActiveRecord::Migration[6.0]
  def change
    # change_column :users, :credit_card_debt, 'integer USING credit_card_debt::integer'
    ALTER TABLE users ALTER COLUMN credit_card_debt TYPE integer USING (trim(credit_card_debt)::integer);
  end
end
