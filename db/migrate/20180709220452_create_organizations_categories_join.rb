class CreateOrganizationsCategoriesJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations_categories do |t|
        t.belongs_to :organization, index: true
        t.belongs_to :category, index: true
    end
  end
end
