category_data = JSON.parse(File.read('db/seeds/categories.json'))

category_data.each do |category|
  Category.create!(category)
end

organization_data = JSON.parse(File.read('db/seeds/categories.json'))

organization_data.each do |organization|
  Organization.create!(organization)
end
