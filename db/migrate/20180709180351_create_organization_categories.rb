class CreateOrganizationCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_categories do |t|
      t.timestamps
    end
  end
end
