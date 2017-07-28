class CreateLots < ActiveRecord::Migration[5.0]
  def change
    create_table :lots do |t|
      t.integer :senasa
      t.references :turn, foreign_key: true
      t.references :producer, foreign_key: true

      t.timestamps
    end
  end
end
