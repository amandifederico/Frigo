class CreateGuides < ActiveRecord::Migration[5.0]
  def change
    create_table :guides do |t|
      t.references :lot, foreign_key: true
      t.references :city, foreign_key: true
      t.date :arrival_date
      t.references :transport, foreign_key: true

      t.timestamps
    end
  end
end
