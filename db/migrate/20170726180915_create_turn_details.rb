class CreateTurnDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :turn_details do |t|
      t.references :turn, foreign_key: true
      t.references :agent, foreign_key: true
      t.references :place, foreign_key: true
      t.references :position, foreign_key: true
      t.string :observation

      t.timestamps
    end
  end
end
