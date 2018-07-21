class DropCoordinatesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :coordinates
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end

end
