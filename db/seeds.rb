require 'csv'

category_data = JSON.parse(File.read('db/seeds/categories.json'))

category_data.each do |category|
  Category.create!(category)
end

organization_data = JSON.parse(File.read('db/seeds/organizations.json'))

organization_data.each do |organization|
  Organization.create!(organization)
end

ORG_CAT_FILE = Rails.root.join('db', 'seeds','organization_categories.csv')
puts "Loading raw organization_categories data from #{ORG_CAT_FILE}"

CSV.foreach(ORG_CAT_FILE, :headers => true) do |row|
  organization = Organization.find(row['organization_id'])
  category = Category.find(row['category_id'])
  category.organizations << organization
end
