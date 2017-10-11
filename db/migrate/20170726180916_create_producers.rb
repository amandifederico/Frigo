class CreateProducers < ActiveRecord::Migration[5.0]
  def change
    create_table :producers do |t|
      t.string :name
      t.integer :cuit, :limit => 8
      t.integer :telephone, :limit => 8
      t.string :email
      t.string :address
      t.date :up_date
      t.date :down_date
      t.references :city, foreign_key: true
      t.string :observation
      t.boolean :active

      t.timestamps
    end
  end
end
