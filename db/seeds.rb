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

Product.destroy_all
p1 = Product.create :product_name => "White - Silver", :price => 139, :product_desc1 => "Paying tribute to an exciting street in one of NYC’s signature shopping destinations, the MERCER collection features stainless steel mesh straps for an exquisite look that suits this fashionable neighborhood", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/r/o/rosefield_1_silver1_1.png"
p2 = Product.create :product_name => "White - Rose Gold", :price => 139, :product_desc1 => "blah", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/r/o/rosefield_1_rose_1.png"
p3 = Product.create :product_name => "Black - Black", :price => 139, :product_desc1 => "Paying tribute to an exciting street in one of NYC’s signature shopping destinations, the MERCER collection features stainless steel mesh straps for an exquisite look that suits this fashionable neighborhood", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/b/l/black_frontal02_7_1_1.png"
b1.products << p1 << p2 << p3

p4 = Product.create :product_name => "White - Green", :price => 149, :product_desc1 => "Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/r/o/rosefield_2_greenrose_2.png"
p5 = Product.create :product_name => "White - Grey", :price => 149, :product_desc1 => "Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/r/o/rosefield_2_rose_6_1.png"
p6 = Product.create :product_name => "White - Blue", :price => 149, :product_desc1 => "Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/r/o/rosefield_2_bluerose_1.png"
b2.products << p4 << p5 << p6

p7 = Product.create :product_name => "White - Pink", :price => 159, :product_desc1 => "Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/r/o/rosefield_1_silver2_1.png"
p8 = Product.create :product_name => "White - Brown", :price => 159, :product_desc1 => "Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/r/o/rosefield_1_yellow_3.png"
p9 = Product.create :product_name => "Black - Brown", :price => 159, :product_desc1 => "Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory", :image => "https://www.rosefieldwatches.com/media/catalog/product/cache/10/image/700x800/17f82f742ffe127f42dca9de82fb58b1/r/o/rosefield_1_yellow_2.png"
b3.products << p7 << p8 << p9

puts "Product names: #{Product.all.pluck("product_name")}"
puts "Mercer watches include: #{b1.products.pluck("product_name")}"
puts "Bowery watches include: #{b2.products.pluck("product_name")}"
puts "Gramercy watches include: #{b3.products.pluck("product_name")}"

Cart.destroy_all
