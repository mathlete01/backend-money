class CreatePrompts < ActiveRecord::Migration[6.0]
  def change
    create_table :prompts do |t|
      t.integer :comesFrom
      t.integer :continueTo
      t.boolean :answer
      t.integer :yesTo
      t.integer :noTo

      t.timestamps
    end
  end
end
