class CreateAgents < ActiveRecord::Migration[5.0]
  def change
    create_table :agents do |t|
      t.string :last_name
      t.string :name
      t.integer :dni
      t.references :position, foreign_key: true
      t.date :up_date
      t.date :down_date

      t.timestamps
    end
  end
end
