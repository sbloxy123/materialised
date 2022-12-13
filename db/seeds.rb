# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb
require "open-uri"
puts "Cleaning database..."
# User.destroy_all
Driver.destroy_all
Material.destroy_all
Supplier.destroy_all
require 'faker'

puts 'users...'
# user_first = User.new(email: "john12@gmail.com", id: 1)
# user_first.save!
# puts 'orders...'
# order_first = Order.new(order: "", site_location: "london", driver_id: 1, user_id: 1)
# order_first.save!
# order_second = Order.new(order: "", site_location: "DARTFORD", driver_id: 2, user_id: 1)
# order_second.save!
# order_third = Order.new(order: "", site_location:"BEXLEY", driver_id: 3, user_id: 1)
# order_third.save!

puts 'Drivers...'
driver_one = Driver.new(name: "Tim", location: "Lambeth, London", vehicle_type: "Large truck", driver_img: "31.jpeg", rating: 5)
driver_one.save!
driver_second = Driver.new(name: "William", location: "Temple, London", vehicle_type: "Van", driver_img: "daa.jpeg", rating: 4)
driver_second.save!
driver_third = Driver.new(name: "Bill", location: "Canonbury Rd, London", vehicle_type: "Motorbike", driver_img: "chap.jpeg", rating: 3)
driver_third.save!
driver_fourth = Driver.new(name: "Alex", location: "Harley St, London", vehicle_type: "Van", driver_img: "ddd.webp", rating: 3)
driver_fourth.save!
driver_fifth = Driver.new(name: "Peter", location: "St James's Square, London", vehicle_type: "Large truck", driver_img: "erf.png", rating: 2)
driver_fifth.save!
driver_sixth = Driver.new(name: "Paul", location: "Old Brompton Rd, London", vehicle_type: "Motorbike", driver_img: "images.jpeg", rating: 5)
driver_sixth.save!
driver_seventh = Driver.new(name: "Greg", location: "Westminster, London", vehicle_type: "Large truck", driver_img: "man.jpeg", rating: 4)
driver_seventh.save!
driver_eigth = Driver.new(name: "Ryan", location: "Rawlings St, London", vehicle_type: "Van", driver_img: "pic.png", rating: 3)
driver_eigth.save!


# puts 'order_materials...'
# Order_materials_first = Order_material.new(order_id: 1, material_id:1, quantity:rand(1..100) )
# Order_materials_first = Order_material.new(order_id: 2, material_id:2, quantity:rand(1..100) )
# Order_materials_first = Order_material.new(order_id: 3, material_id:3, quantity:rand(10..100))
# Order_materials.save!

puts 'materials...'
# puts 3.times do
construction_first = Material.new(name: "Studwork CLS Timber", category: "Construction", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_1500,q_auto:good,w_1500/c_pad,h_1500,w_1500/v1/products/wickes/S3308_107177_00?pgw=1&pgwact=1")
construction_first.save!
construction_second = Material.new(name: "Angle Bracket", category: "Construction", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), image: "https://www.e-rigging.com/assets/images/p/4482/SS-Angle-Bracket-31mm.jpg")
construction_second.save!
construction_third = Material.new(name: "PTG Floorboards", category: "Construction", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_2250,q_auto:good,w_2250/c_pad,h_2250,w_2250/v1/products/wickes/GPID_5000028390_00?pgw=1&pgwact=1")
construction_third.save!


plumbing_first = Material.new(name: "Copper Pipe", category: "Plumbing & Heating", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://mobileimages.lowes.com/productimages/21e9fbab-f916-4dc6-b2ac-fda170d06b1f/15583962.jpg")
plumbing_first.save!
plumbing_second = Material.new(name: "Radiator", category: "Plumbing & Heating", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width:rand(10..100), weight: rand(1..100), image: "https://dam.cityplumbing.co.uk/qo2LX/GPID_1100589177_IMG_00.jpeg?width=450&height=300")
plumbing_second.save!
plumbing_third = Material.new(name: "Tower Heater", category: "Plumbing & Heating", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://www.kontrolsat.com/20388-medium_default/edm-ceramic-tower-heater-2000-w.jpg")
plumbing_third.save!


gardens_first = Material.new(name: "Fence Panel", category: "Gardens & Landscaping", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_2250,q_auto:good,w_2250/c_pad,h_2250,w_2250/v1/products/wickes/L1641_540052_00?pgw=1&pgwact=1")
gardens_first.save!
gardens_second = Material.new(name: "Petrol Lawn Mower", category: "Gardens & Landscaping", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width:rand(10..100), weight: rand(1..100), image: "https://assets.einhell.com/im/imf/y400/900_385021/GE-EM%201233")
gardens_second.save!
gardens_third = Material.new(name: "Charcoal BBQ", category: "Gardens & Landscaping", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://pictureserver.net/images/pic/25/a2/undef_src_sa_picid_816053_x_760_type_whitesh_image.jpg?ver=34")
gardens_third.save!


tools_first = Material.new(name: "Hammer Drill", category: "Tools", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wuerth.com/source/eshop/stmedia/wuerth/images/std.lang.all/resolutions/category/800px/754309.jpg")
tools_first.save!
tools_second = Material.new(name: "Handsaw", category: "Tools", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://m.media-amazon.com/images/I/31kvCj7YFML._AC_.jpg")
tools_second.save!
tools_third = Material.new(name: "Angle Grinder", category: "Tools", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://cmc.pt/wp-content/uploads/2021/06/0601388106.jpg")
tools_third.save!


electrical_first = Material.new(name: "Bulkhead Light", category: "Electrical", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://m.media-amazon.com/images/I/71E1jrNyQZL.jpg")
electrical_first.save!
electrical_second = Material.new(name: "Flexible Round Cable", category: "Electrical", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://m.media-amazon.com/images/I/61oQiLMLgLL._SL1280_.jpg")
electrical_second.save!
electrical_third = Material.new(name: "Steel Double Switch", category: "Electrical", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.screwfix.com/is/image//ae235?src=ae235/31462_P&$prodImageMedium$")
electrical_third.save!


flooring_first = Material.new(name: "Glazed Porcelain", category: "Flooring & Tiling", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://www.ctm.co.za/media/catalog/product/cache/95c3f9d5dc7504df62510b32158de346/m/i/mim1038_palazzo_gris_white_glazed_porcelain_floor_tile_l1.jpg")
flooring_first.save!
flooring_second = Material.new(name: "Laminate Flooring", category: "Flooring & Tiling", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://contentgrid.thdstatic.com/hdus/en_US/DTCCOMNEW/fetch/NexGen/ContentPage/LaminateFlooringGuides.jpg")
flooring_second.save!
flooring_third = Material.new(name: "Ceramic Tile", category: "Flooring & Tiling", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://www.tilebar.com/media/catalog/product/cache/2270f03c9e16417ec0e6c7cc04a76711/s/s/ss1-tleqmyrkblue4x4.jpg")
flooring_third.save!


bricks_first = Material.new(name: "Red Facing Brick", category: "Bricks and Lintels", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://lordsbm.co.uk/pub/media/catalog/product/cache/d2b76106ac544cf84aaef82e9d7f833e/S/B/SBR01790_19ab.jpg")
bricks_first.save!
bricks_second = Material.new(name: "Concrete Lintel", category: "Bricks and Lintels", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://www.yorkbuilding.com/wp-content/uploads/2020/08/Lintel_Unit-1.jpg")
bricks_second.save!
bricks_third = Material.new(name: "Steel Lintel", category: "Bricks and Lintels", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://iglintels.com/wp-content/uploads/2018/06/100m_inner_leaf.jpg")
bricks_third.save!


bricks_first = Material.new(name: "Paint Roller Kit", category: "Painting & Decorating", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://ae01.alicdn.com/kf/HTB1qxZMjvImBKNjSZFlq6A43FXaB/Multifunctional-tool-paint-5-pcs-DIY-Paint-Roller-Kit-Painting-Runner-Decor-Professional-Tools-Painting-Wall.jpg")
bricks_first.save!
bricks_second = Material.new(name: "White Emulsion Paint", category: "Painting & Decorating", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_2250,q_auto:good,w_2250/c_pad,h_2250,w_2250/v1/products/wickes/I9026_121110_00?pgw=1&pgwact=1")
bricks_second.save!
bricks_third = Material.new(name: "Light Grey Wallpaper", category: "Painting & Decorating", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://img.fruugo.com/product/9/64/155875649_max.jpg")
bricks_third.save!


puts 'Suppliers...'
wickes_one = Supplier.new(name: "Wickes", address: "40 Little Portland St
  London, England", image: "wickes.png")
wickes_one.save!
wickes_two = Supplier.new(name: "Wickes", address: "101 Fleet St
  London, England", image: "wickes.png")
wickes_two.save!

builders_depot_one = Supplier.new(name: "Builders Depot", address: "8 Thorney St
  London, England", image: "builderdepot.png")
builders_depot_one.save!

selco_builders_one = Supplier.new(name: "Selco Builders Warehouse", address: "20 Wren St
  London, England", image: "selco.jpeg")
selco_builders_one.save!
selco_builders_two = Supplier.new(name: "Selco Builders Warehouse", address: "1 Wenlock St
  London, England", image: "selco.jpeg")
selco_builders_two.save!

jewsons_one = Supplier.new(name: "Jewsons", address: "212 A1200
  London, England", image: "jewsons.png")
jewsons_one.save!
jewsons_two = Supplier.new(name: "Jewsons", address: "8 Carlton Gardens
  London, England", image: "jewsons.png")
jewsons_two.save!

travis_perkins_one = Supplier.new(name: "Travis Perkins", address: "Weaver St
  London, England", image: "travisperkins.png")
travis_perkins_one.save!
travis_perkins_two = Supplier.new(name: "Travis Perkins", address: "1 Bembridge Cl
  London, England", image: "travisperkins.png")
travis_perkins_two.save!

screwfix_one = Supplier.new(name: "Screwfix", address: "4 Bayham St
  London, England", image: "screwfix.png")
screwfix_one.save!
screwfix_two = Supplier.new(name: "Screwfix", address: "9 Princess Rd
  London, England", image: "screwfix.png")
screwfix_two.save!

toolstation_one = Supplier.new(name: "Toolstation", address: "55 Library St
  London, England", image: "toolstation.png")
toolstation_one.save!
toolstation_two = Supplier.new(name: "Toolstation", address: "17 St Mary Axe
  London, England", image: "toolstation.png")
toolstation_two.save!

puts 'Finished!'
