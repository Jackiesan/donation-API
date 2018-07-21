class AddEinColumnToCoordinateTable < ActiveRecord::Migration[5.2]
  def change
    add_column :coordinates, :ein, :string
  end
end
