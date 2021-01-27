class AddCreditCardsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :cc_1, :integer
    add_column :users, :cc_2, :integer
    add_column :users, :cc_3, :integer
  end
end
