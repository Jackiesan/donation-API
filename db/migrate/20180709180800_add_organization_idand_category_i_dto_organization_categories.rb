class AddOrganizationIdandCategoryIDtoOrganizationCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :organization_categories, :organization, foreign_key: true
    add_reference :organization_categories, :category, foreign_key: true
  end
end
