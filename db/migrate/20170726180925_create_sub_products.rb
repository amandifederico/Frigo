class CreateSubProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_products do |t|
      t.references :lot, foreign_key: true
      t.string :observartion

      t.timestamps
    end
  end
end
