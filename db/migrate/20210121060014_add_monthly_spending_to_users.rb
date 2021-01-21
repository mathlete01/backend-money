class AddMonthlySpendingToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :monthly_spending, :integer
  end
end
