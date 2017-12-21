class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.string :description
      t.references :animal_type, foreign_key: true
      t.integer :average_value
      t.string :initials
      t.timestamps
    end
  end
end
