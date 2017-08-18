class CambiosLoteProductor < ActiveRecord::Migration[5.0]
  def change
  	rename_column :lots, :senasa, :dte
  end
end
