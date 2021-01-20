class ChangeDataTypeForFour01kMatch < ActiveRecord::Migration[6.0]
  def change
    change_column(:users, :four01k_match, :float)
end
end
