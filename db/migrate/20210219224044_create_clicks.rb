class CreateClicks < ActiveRecord::Migration[6.0]
  def change
    create_table :clicks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :steps, null: false, foreign_key: true
      t.references :rows, null: false, foreign_key: true

      t.timestamps
    end
  end
end
