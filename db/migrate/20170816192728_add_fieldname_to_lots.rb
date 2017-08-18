class AddFieldnameToLots < ActiveRecord::Migration[5.0]
  def change
    add_column :lots, :close_code, :string
  end
end
