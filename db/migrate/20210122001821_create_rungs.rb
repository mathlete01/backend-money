class CreateRungs < ActiveRecord::Migration[6.0]
  def change
    create_table :rungs do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :rung_1
      t.boolean :rung_2
      t.boolean :rung_3
      t.boolean :rung_4
      t.boolean :rung_5
      t.boolean :rung_6
      t.boolean :rung_7
      t.timestamps
    end
  end
end
