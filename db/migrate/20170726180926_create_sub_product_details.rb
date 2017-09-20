class CreateSubProductDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_product_details do |t|
      t.references :sub_product, foreign_key: true
      t.references :sub_product_type, foreign_key: true
      t.integer :weight
      #t.integer :weight_control
      t.integer :green
      t.integer :processed
      t.integer :red
      t.integer :caliber
      t.string :observation

      t.timestamps
    end
  end
end
