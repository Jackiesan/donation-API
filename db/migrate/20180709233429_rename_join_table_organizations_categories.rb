class RenameJoinTableOrganizationsCategories < ActiveRecord::Migration[5.2]
  def change
    rename_table :organizations_categories, :categories_organizations
  end
end
