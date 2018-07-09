class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :ein
      t.string :charityName
      t.string :accepted_categories
      t.string :amazonWishlist

      t.timestamps
    end
  end
end
