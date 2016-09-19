# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Brand.destroy_all
b1 = Brand.create :brand_name => "Mercer"
b2 = Brand.create :brand_name => "Bowery"
b3 = Brand.create :brand_name => "Gramercy"

puts "Brand names: #{Brand.all.pluck("brand_name")}"

# Product.destroy_all
# p1 = Product.create :product_name => "New Blue", :price => 139
