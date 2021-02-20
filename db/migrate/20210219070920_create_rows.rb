class CreateRows < ActiveRecord::Migration[6.0]
  def change
    create_table :rows do |t|
      t.integer :row_1
      t.integer :row_2
      t.integer :row_3
      t.integer :row_4
      t.integer :row_5

      t.timestamps
    end
  end
end
