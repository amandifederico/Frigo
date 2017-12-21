class CreateLots < ActiveRecord::Migration[5.0]
  def change
    create_table :lots do |t|
      t.string :dte
      t.references :turn, foreign_key: true
      t.references :producer, foreign_key: true
      t.references :city, foreign_key: true
      t.integer :troop_number
      t.date :cargo_date
      t.date :expiration_date
      t.references :transport, foreign_key: true
      t.string :seal_number
      t.integer :liveweight
      t.integer :quantity_control
      t.string :close_code
      t.timestamps
    end
  end
end
