# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Brand.destroy_all
b1 = Brand.create brand_name: 'Mercer'
b2 = Brand.create brand_name: 'Bowery'
b3 = Brand.create brand_name: 'Gramercy'
straps = Brand.create brand_name: 'Straps'

# TEST BRANDS
puts "Brand names: #{Brand.all.pluck('brand_name')}"

Product.destroy_all
p1 = Product.create product_name: 'White-Silver', price: 139, product_desc1: 'Paying tribute to an exciting street in one of NYC’s signature shopping destinations, the MERCER collection features stainless steel mesh straps for an exquisite look that suits this fashionable neighborhood', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_silver1_1.png'
p2 = Product.create product_name: 'White-RoseGold', price: 139, product_desc1: 'Paying tribute to an exciting street in one of NYC’s signature shopping destinations, the MERCER collection features stainless steel mesh straps for an exquisite look that suits this fashionable neighborhood', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_rose_1.png'
p3 = Product.create product_name: 'Black-Black', price: 139, product_desc1: 'Paying tribute to an exciting street in one of NYC’s signature shopping destinations, the MERCER collection features stainless steel mesh straps for an exquisite look that suits this fashionable neighborhood', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/b/l/black_frontal02_7_1_1.png'
p4 = Product.create product_name: 'White-Gold', price: 139, product_desc1: 'Paying tribute to an exciting street in one of NYC’s signature shopping destinations, the MERCER collection features stainless steel mesh straps for an exquisite look that suits this fashionable neighborhood', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_yellow_6_1.png'
p5 = Product.create product_name: 'NewBlue', price: 139, product_desc1: 'Paying tribute to an exciting street in one of NYC’s signature shopping destinations, the MERCER collection features stainless steel mesh straps for an exquisite look that suits this fashionable neighborhood', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_blue_1.png'

b1.products << p1 << p2 << p3 << p4 << p5

p6 = Product.create product_name: 'White-Green', price: 149, product_desc1: 'Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_2_greenrose_1.png'
p7 = Product.create product_name: 'White-Blue', price: 149, product_desc1: 'Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_2_bluerose.png'
p8 = Product.create product_name: 'White-Black', price: 149, product_desc1: 'Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_2_rose_7.png'
p9 = Product.create product_name: 'White-Grey', price: 149, product_desc1: 'Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_2_rose_6.png'
p10 = Product.create product_name: 'White-Pink', price: 149, product_desc1: 'Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_2_rose_5_1_1.png'
p11 = Product.create product_name: 'White-Brown', price: 149, product_desc1: 'Inspired by an iconic NYC neighborhood and caught between boho-chic and classic, the BOWERY collection combines a minimalist, ultra-thin watch case with elegantly stitched leather straps', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_2_rose_8_1_2_1_.png'

b2.products << p6 << p7 << p8 << p9 << p10 << p11

p12 = Product.create product_name: 'White-Black', price: 159, product_desc1: 'Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_silver4_1.png'
p13 = Product.create product_name: 'White-black', price: 159, product_desc1: 'Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_yellow_4.png'
p14 = Product.create product_name: 'Black-Black', price: 159, product_desc1: 'Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_yellow_1.png'
p15 = Product.create product_name: 'White-Pink', price: 159, product_desc1: 'Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_silver2_1.png'
p16 = Product.create product_name: 'Black-Brown', price: 159, product_desc1: 'Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_yellow_2.png'
p17 = Product.create product_name: 'White-Brown', price: 159, product_desc1: 'Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/r/o/rosefield_1_yellow_3.png'
p18 = Product.create product_name: 'Black-Black', price: 3000, product_desc1: 'Named after a prime location in Manhattan, home to fashion designers from all over the world, the GRAMERCY collection combines a clean watch face with clean-cut leather straps to create a modern and alluring fashion accessory', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/n/1/n1.png'

b3.products << p12 << p13 << p14 << p15 << p16 << p17 << p18

s1 = Product.create product_name: 'Black-Stitched', price: 45, product_desc1: 'Handcrafted from genuine leather, our collections feature both stitched leather straps for a classic look and clean-cut leather straps for a modern look. All of our leather straps are interchangeable and due to an innovative pin mechanism alternating between your favourite styles is only a matter of seconds.', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/s/t/strap_seam_black_rose_3.png'
s2 = Product.create product_name: 'Brown-Stitched', price: 45, product_desc1: 'Handcrafted from genuine leather, our collections feature both stitched leather straps for a classic look and clean-cut leather straps for a modern look. All of our leather straps are interchangeable and due to an innovative pin mechanism alternating between your favourite styles is only a matter of seconds.', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/s/t/strap_seam_brown_rose_1_1.png'
s3 = Product.create product_name: 'Red-Stitched', price: 45, product_desc1: 'Handcrafted from genuine leather, our collections feature both stitched leather straps for a classic look and clean-cut leather straps for a modern look. All of our leather straps are interchangeable and due to an innovative pin mechanism alternating between your favourite styles is only a matter of seconds.', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/s/t/strap_seam_red_rose_1_1.png'
s4 = Product.create product_name: 'Pink-Stitched', price: 45, product_desc1: 'Handcrafted from genuine leather, our collections feature both stitched leather straps for a classic look and clean-cut leather straps for a modern look. All of our leather straps are interchangeable and due to an innovative pin mechanism alternating between your favourite styles is only a matter of seconds.', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/s/t/strap_seam_pink_rose_4.png'
s5 = Product.create product_name: 'Black-Clean', price: 45, product_desc1: 'Handcrafted from genuine leather, our collections feature both stitched leather straps for a classic look and clean-cut leather straps for a modern look. All of our leather straps are interchangeable and due to an innovative pin mechanism alternating between your favourite styles is only a matter of seconds.', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/s/t/strap_black_gold_2.png'
s6 = Product.create product_name: 'Brown-Clean', price: 45, product_desc1: 'Handcrafted from genuine leather, our collections feature both stitched leather straps for a classic look and clean-cut leather straps for a modern look. All of our leather straps are interchangeable and due to an innovative pin mechanism alternating between your favourite styles is only a matter of seconds.', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/s/t/strap_brown_gold_3.png'
s7 = Product.create product_name: 'Pink-Clean', price: 45, product_desc1: 'Handcrafted from genuine leather, our collections feature both stitched leather straps for a classic look and clean-cut leather straps for a modern look. All of our leather straps are interchangeable and due to an innovative pin mechanism alternating between your favourite styles is only a matter of seconds.', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/s/t/strap_pink_silver_3_1.png'
s8 = Product.create product_name: 'Stitched', price: 45, product_desc1: 'Handcrafted from genuine leather, our collections feature both stitched leather straps for a classic look and clean-cut leather straps for a modern look. All of our leather straps are interchangeable and due to an innovative pin mechanism alternating between your favourite styles is only a matter of seconds.', image: 'https://www.rosefieldwatches.com/media/catalog/product/cache/10/thumbnail/525x525/9df78eab33525d08d6e5fb8d27136e95/s/t/strap_seam_grey_rose_3.png'
straps.products << s1 << s2 << s3 << s4 << s5 << s6 << s7 << s8

# TESTS
puts "Product count: #{Product.all.length}"
puts "Product names: #{Product.all.pluck('product_name')}"
puts "\nMercer watch count: #{b1.products.length}. Includes: #{b1.products.pluck('product_name')}"
puts "Bowery watch count: #{b2.products.length}. Includes: #{b2.products.pluck('product_name')}"
puts "Gramercy watch count: #{b3.products.length}. Includes: #{b3.products.pluck('product_name')}"
puts "\nStraps count: #{straps.products.length}. Includes: #{straps.products.pluck('product_name')}"

Cart.destroy_all

Order.destroy_all

Item.destroy_all

User.destroy_all

admin = User.create first_name: 'admin', email: 'admin@ga.co', password: 'chicken', password_confirmation: 'chicken', admin: 'true'

puts "User count: #{User.all.length}"
puts "Admin email: #{admin.email}, password: #{admin.password}"
