class CambiosLoteTipo < ActiveRecord::Migration[5.0]
  def change
  	change_column :lots, :dte, :string
  end
end
