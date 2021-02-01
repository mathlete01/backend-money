class RenameSingleMaxToSingleMax < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :singleMax, :single_max
  end
end
