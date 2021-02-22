class AddMagiToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :magi, :integer
  end
end
