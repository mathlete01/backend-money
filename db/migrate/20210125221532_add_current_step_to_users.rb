class AddCurrentStepToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :current_step, :string
  end
end
