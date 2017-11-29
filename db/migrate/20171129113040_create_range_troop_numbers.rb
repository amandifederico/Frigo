class CreateRangeTroopNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :range_troop_numbers do |t|
      t.integer :min
      t.integer :max

      t.timestamps
    end
  end
end
