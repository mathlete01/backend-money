class ChangeDataTypeForCreditCardDebt < ActiveRecord::Migration[6.0]
  def change
    change_column(:users, :credit_card_debt, :integer)
  end
end
