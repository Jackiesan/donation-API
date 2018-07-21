class AddLongandLatColumnToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :longitude, :string
    add_column :organizations, :latitude, :string
  end
end
