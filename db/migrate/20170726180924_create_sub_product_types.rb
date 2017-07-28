class CreateSubProductTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_product_types do |t|
      t.string :description

      t.timestamps
    end
  end
end
