class CreateProductDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :product_details do |t|
      t.references :product, foreign_key: true
      t.integer :weight
      t.integer :weight_control
      t.string :observation

      t.timestamps
    end
  end
end
