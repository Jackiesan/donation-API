class AddStreetColumnToOrgs < ActiveRecord::Migration[5.2]
  def change
    add_column :orgs, :street, :string
    add_column :orgs, :country, :string
  end
end
