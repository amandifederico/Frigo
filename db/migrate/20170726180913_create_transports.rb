class CreateTransports < ActiveRecord::Migration[5.0]
  def change
    create_table :transports do |t|
      t.integer :coupled
      t.integer :capacity
      t.string :plate
      t.string :model
      t.string :driver

      t.timestamps
    end
  end
end
