class AddPathStrToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :path_str, :string
  end
end
