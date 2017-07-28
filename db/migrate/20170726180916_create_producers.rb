class CreateProducers < ActiveRecord::Migration[5.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.date :up_date
      t.date :down_date
      t.references :city, foreign_key: true
      t.string :observation

      t.timestamps
    end
  end
end
