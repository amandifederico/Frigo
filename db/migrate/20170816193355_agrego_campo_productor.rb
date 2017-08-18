class AgregoCampoProductor < ActiveRecord::Migration[5.0]
  def change
  	add_column :producers, :active, :boolean
  end
end
