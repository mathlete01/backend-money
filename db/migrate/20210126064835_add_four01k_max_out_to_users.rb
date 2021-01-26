class AddFour01kMaxOutToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :four01k_max_o_out, :boolean
  end
end
