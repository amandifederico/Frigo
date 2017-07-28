class CreateTurns < ActiveRecord::Migration[5.0]
  def change
    create_table :turns do |t|
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
