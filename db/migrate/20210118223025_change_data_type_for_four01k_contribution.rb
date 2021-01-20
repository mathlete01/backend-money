class ChangeDataTypeForFour01kContribution < ActiveRecord::Migration[6.0]
  def change
    change_column(:users, :four01k_contribution, :float)
  end
end
