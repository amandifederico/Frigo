class CreateLots < ActiveRecord::Migration[5.0]
  def change
    create_table :lots do |t|
      t.string :dte
      t.references :turn, foreign_key: true
      t.references :producer, foreign_key: true
      t.string :close_code
      t.timestamps
    end
  end
end
