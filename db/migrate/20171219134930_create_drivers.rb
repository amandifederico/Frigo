class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :last_name
      t.integer :dni
      t.string :observation
      t.references :transport, foreign_key: true

      t.timestamps
    end
  end
end
