class CreateLotDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :lot_details do |t|
      t.references :lot, foreign_key: true
      t.references :animal, foreign_key: true
      t.integer :quantity
      t.integer :fallen
      t.string :observation

      t.timestamps
    end
  end
end
