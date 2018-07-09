class RenameIntermediateTable < ActiveRecord::Migration[5.2]
  def change
    rename_table :organization_categories, :assignments
  end
end
