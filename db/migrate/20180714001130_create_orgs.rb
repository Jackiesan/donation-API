class CreateOrgs < ActiveRecord::Migration[5.2]
  def change
    create_table :orgs do |t|
      t.string :ein
      t.string :charityName
      t.string :url
      t.string :donationUrl
      t.string :city
      t.string :state
      t.string :zipCode
      t.string :website
      t.string :missionStatement
      t.string :longitude
      t.string :latitude
      t.string :amazonWishlist
      t.string :accepted_categories

      t.timestamps
    end
  end
end
