class CreateCoordinates < ActiveRecord::Migration[5.2]
  def change
    create_table :coordinates do |t|
      t.string :charityName
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
