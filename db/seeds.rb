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
driver_one = Driver.new(name: "tim", location: "london", vehicle_type: "Medium truck")
driver_one.save!
driver_second = Driver.new(name: "william", location: "DARTFORD", vehicle_type: "Large truck")
driver_second.save!
driver_third = Driver.new(name: "bill", location: "Bexley", vehicle_type: "truck ")
driver_third.save!

# puts 'order_materials...'
# Order_materials_first = Order_material.new(order_id: 1, material_id:1, quantity:rand(1..100) )
# Order_materials_first = Order_material.new(order_id: 2, material_id:2, quantity:rand(1..100) )
# Order_materials_first = Order_material.new(order_id: 3, material_id:3, quantity:rand(10..100))
# Order_materials.save!

puts 'materials...'
# puts 3.times do
construction_first = Material.new(name: "Studwork CLS Timber", category: "Construction", description: "C16 graded structural timber perfect for use in stud wall timber partitions and many other framing projects. Planed surfaces with eased corners to provide a precision finish.", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_1500,q_auto:good,w_1500/c_pad,h_1500,w_1500/v1/products/wickes/S3308_107177_00?pgw=1&pgwact=1")
construction_first.save!
construction_second = Material.new(name: "Angle Bracket", category: "Construction", description: "Angle brackets for multi-purpose connections.", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), image: "https://www.e-rigging.com/assets/images/p/4482/SS-Angle-Bracket-31mm.jpg")
construction_second.save!
construction_third = Material.new(name: "PTG Floorboards", category: "Construction", description: "Solid traditional softwood planed floorboards with a tongue and groove finish. Produced from slow-grown trees and kiln-dried for improved stability.", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_2250,q_auto:good,w_2250/c_pad,h_2250,w_2250/v1/products/wickes/GPID_5000028390_00?pgw=1&pgwact=1")
construction_third.save!
construction_fourth = Material.new Material.new(name: " Non-Structural Hardwood Plywood", category: "Construction", description: "The Non-Structural Hardwood Plywood is a versatile non-structural building board with a smooth sanded surface. Designed to resist warping and bending.", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), image: "https://expresszuschnitt.de/media/image/product/25050/lg/spanplatten-bardolino-sonoma-eiche.jpg")
construction_fourth.save!
construction_fifth = Material.new Material.new(name: "White Furniture Panel", category: "Construction", description: "A furniture grade product which is ideal for use as shelving or carcasses in kitchens or bedroom.", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), image: "https://www.abuiltmy.com/image/cache/abd/1813944-600x667.jpg")
construction_fifth.save!

plumbing_first = Material.new(name: "Copper Pipe", category: "Plumbing & Heating", description: "Copper pipework is highly durable, easy to work with and to install. It is corrosion and ultraviolet resistant, has excellent thermal conductivity, and is antimicrobia, making it impossible for bacteria to grow", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://mobileimages.lowes.com/productimages/21e9fbab-f916-4dc6-b2ac-fda170d06b1f/15583962.jpg")
plumbing_first.save!
plumbing_second = Material.new(name: "Radiator", category: "Plumbing & Heating", description: "The Verona single plane radiators allow you to choose the right output for any situation.Offering visual appeal combined with advanced technology, the Verona provides a contemporary solution for a huge range of applications.With a choice of four types and a variety of sizes and outputs, the Verona allows extensive flexibility of siting, whilst breaking new barriers in heating efficiency. This product is delivered kerbside only.", price: rand(10..100), length: rand(10..100), width:rand(10..100), weight: rand(1..100), image: "https://dam.cityplumbing.co.uk/qo2LX/GPID_1100589177_IMG_00.jpeg?width=450&height=300")
plumbing_second.save!
plumbing_third = Material.new(name: "Tower Heater", category: "Plumbing & Heating", description: "Featuring 3 speed settings and easy to use controls on the top, this 18 inch tower fan oscillates, which alongside its slim design to save space, makes it ideal for floor use, especially in compact rooms.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://www.kontrolsat.com/20388-medium_default/edm-ceramic-tower-heater-2000-w.jpg")
plumbing_third.save!
plumbing_fourth = Material.new(name: "Tap Kit", category: "Plumbing & Heating", description: "The kit contains all the necessary components to fit an external tap linking to an inside supply pipe without having to cut off the water supply.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_2250,q_auto:good,w_2250/c_pad,h_2250,w_2250/v1/products/wickes/C7322_420000_00?pgw=1&pgwact=1")
plumbing_fourth.save!
plumbing_fifth = Material.new(name: "Combi Boiler- 30kW", category: "Plumbing & Heating", description: "Complete with domestic hot water temperature controls including a switched preheat function, mechanical built-in timer and a digital operating status & diagnostic display, the Exclusive provides reliable control of the home’s heating and hot water performance..", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_2250,q_auto:good,w_2250/c_pad,h_2250,w_2250/v1/products/wickes/C7322_420000_00?pgw=1&pgwact=1")
plumbing_fifth.save!

gardens_first = Material.new(name: "Fence Panel", category: "Gardens & Landscaping", description: "The DuraPost Sepia Brown/Natural Vento Vertical Composite Fence Panel is a stylish, durable, and easy to install fence panel option. DuraPost Vento panels are made from up to 70% recycled materials, so they are more durable than other materials on the market, and they're also more environmentally friendly.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_2250,q_auto:good,w_2250/c_pad,h_2250,w_2250/v1/products/wickes/L1641_540052_00?pgw=1&pgwact=1")
gardens_first.save!
gardens_second = Material.new(name: "Petrol Lawn Mower", category: "Gardens & Landscaping", description: "The Lawnmower makes taking care of the garden a real pleasure. For knocking grassed areas into shape and tidying up edge strips, get straight down to work without interfering cables, tripping hazards or laborious starting up. Supplied with 4 x 18V batteries.", price: rand(10..100), length: rand(10..100), width:rand(10..100), weight: rand(1..100), image: "https://assets.einhell.com/im/imf/y400/900_385021/GE-EM%201233")
gardens_second.save!
gardens_third = Material.new(name: "Charcoal BBQ", category: "Gardens & Landscaping", description: "With a stylish black finish, this American Grill Charcoal BBQ by Charles Bentley is an outdoor cooking solution that looks great in any garden. The charcoal tray is easily adjustable using the 6 level gear system, allowing you to cook your food perfectly to your taste.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://pictureserver.net/images/pic/25/a2/undef_src_sa_picid_816053_x_760_type_whitesh_image.jpg?ver=34")
gardens_third.save!
gardens_fourth = Material.new(name: " Round Cantilever Garden Parasol", category: "Gardens & Landscaping", description: "Make the most of the outdoors on warm sunny days, with this premium 3.5m banana parasol, perfect for keeping you protected from the sun. Designed with an extra-large canopy, this stylish and freestanding parasol can be used anywhere in the garden.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_1500,q_auto:good,w_1500/c_pad,h_1500,w_1500/v1/products/wickes/GPID_1100647698_00?pgw=1&pgwact=1")
gardens_fourth.save!
gardens_fifth = Material.new(name: "Paving Slab ", category: "Gardens & Landscaping", description: "Utility slabs, functional and durable. Perfect for shed bases and edging around your greenhouse. These slabs are not recommended for decorative patios.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), image: "https://pictureserver.net/images/pic/25/a2/undef_src_sa_picid_816053_x_760_type_whitesh_image.jpg?ver=34")
gardens_fifth.save!

tools_first = Material.new(name: "Hammer Drill", category: "Tools", description: "Brushless Hammer Drill Driver is a powerful heavy duty drill that is ultra-compact. The Brushless motor delivers reduced friction and better runtime which enables more power to be delivered during application. This results in less wear and an increase in longevity of the tool.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wuerth.com/source/eshop/stmedia/wuerth/images/std.lang.all/resolutions/category/800px/754309.jpg")
tools_first.save!
tools_second = Material.new(name: "Handsaw", category: "Tools", description: "Hardpoint handsaw with soft grip for user comfort, and fine toothing that gives a superior finish. Ideal for cutting plywood, chipboard and other man-made materials, 9tpi/22 inches.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://m.media-amazon.com/images/I/31kvCj7YFML._AC_.jpg")
tools_second.save!
tools_third = Material.new(name: "Angle Grinder", category: "Tools", description: " Angle Grinder (1x4.0Ah) is ideal for grinding, sanding, cutting or polishing jobs using metal and stone. This angle grinder is the lightest in its class. Softstart and restart safeguard functions allow for more safety for the user. ", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://cmc.pt/wp-content/uploads/2021/06/0601388106.jpg")
tools_third.save!
tools_fourth = Material.new(name: " Puncture Free Wheelbarrow ", category: "Tools", description: "The Camden Classic 85L Puncture free wheelbarrow comes with a black powder coated frame that is very reliable with a one piece tubular design, the tray of the wheelbarrow has specific narrow design that allows easier access through doors, front tray supports that add strength to the overall design.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/is/image/wickes/GPID_5000041553_00?$normal$")
tools_fourth.save!
tools_fifth = Material.new(name: "Defender Recharge Slimline LED Light - 20W", category: "Tools", description: "This Defender Recharge 20W Slimline LED Light can easily be transported and stored with its fold flat design. Impact resistant up to 1 metre, its robust aluminium and ABS housing is built to withstand hard knocks. The folding stand ensures easy positioning of the light and a stable base or it can easily be mounted to a tripod if preferred. ", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://www.defenderpower.com/media/catalog/product/cache/1/image/800x800/9df78eab33525d08d6e5fb8d27136e95/e/2/e206010-img-01_1.jpg")
tools_fifth.save!

electrical_first = Material.new(name: "Bulkhead Light", category: "Electrical", description: "The Bulkhead Light is a neutral and minimalist flush fitting will fit perfectly into any home decor. It features a chrome edge and a jewelled detail surface. Featuring a rating of IP44, this light is also fully dimmable.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://m.media-amazon.com/images/I/71E1jrNyQZL.jpg")
electrical_first.save!
electrical_second = Material.new(name: "Flexible Round Cable", category: "Electrical", description: "This cable has been designed for any small appliance like a power tool, where no earth is needed.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://m.media-amazon.com/images/I/61oQiLMLgLL._SL1280_.jpg")
electrical_second.save!
electrical_third = Material.new(name: "Steel Double Switch", category: "Electrical", description: "This brushed steel finish 10A double light switch operates 2 different lights, whilst the 2 way switching means a second switch can be added to the circuit, to operate the same light from another location (e.g. at the top and bottom of the stairs.)", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.screwfix.com/is/image//ae235?src=ae235/31462_P&$prodImageMedium$")
electrical_third.save!
electrical_fourth = Material.new(name: " Dimmer Switch 2-Way ", category: "Electrical", description: "This double dimmer switch, finished in brushed steel, allows you to control your light in any room in the home. Easy to install, this switch has a 2 way function which allows for a second switch in the circuit (e.g. at either ends of a hallway). It also features an adjustable minimum level for greater control of light levels..", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/is/image/wickes/GPID_1100534556_00?$normal$")
electrical_fourth.save!
electrical_fifth = Material.new(name: " Outdoor Solar  Light ", category: "Electrical", description: "The Saxby Toko Solar Brushed Stainless Steel Wall Light is solar powered and comes with 3 after dark light settings. Setting 1 - permanently on at 60lumens. Setting 2 - permanently on at 60lumens. When motion detected, 240 lumens for 25 seconds. Setting 3 - 600lumens when movement detected. When no movement, light is off.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/is/image/wickes/GPID_1100677658_00?$normal$")
electrical_fifth.save!

flooring_first = Material.new(name: "Glazed Porcelain", category: "Flooring & Tiling", description: "The Moraine range will add a sleek, contemporary look to any room. The glazed porcelain finish has been highly polished, and will reflect light to make the room appear larger and more spacious. Porcelain is a durable and hardwearing material that not only looks sophisticated, it is also extremely versatile and can be used in a variety of applications on both walls and floors.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://www.ctm.co.za/media/catalog/product/cache/95c3f9d5dc7504df62510b32158de346/m/i/mim1038_palazzo_gris_white_glazed_porcelain_floor_tile_l1.jpg")
flooring_first.save!
flooring_second = Material.new(name: "Laminate Flooring", category: "Flooring & Tiling", description: "This 12mm light oak effect laminate flooring offers long lasting practicality whilst remaining perfectly on trend. Embossed textures, eye-catching grain patterns and bevelled edges beautifully replicate the authentic look and feel of wood, providing a sophisticated finish designed to last.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://contentgrid.thdstatic.com/hdus/en_US/DTCCOMNEW/fetch/NexGen/ContentPage/LaminateFlooringGuides.jpg")
flooring_second.save!
flooring_third = Material.new(name: "Ceramic Tile", category: "Flooring & Tiling", description: " These exclusive tiles feature a neutral white colour with grey and taupe veining, for an indulgent appearance. The authentic marble effect markings add distinct character and enhance the unrivalled elegance that is associated with marble.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://www.tilebar.com/media/catalog/product/cache/2270f03c9e16417ec0e6c7cc04a76711/s/s/ss1-tleqmyrkblue4x4.jpg")
flooring_third.save!
flooring_fourth = Material.new(name: " Steel Glazed Porcelain", category: "Flooring & Tiling", description: "Toronto range offers a contemporary, clean and sleek finish. The glazed gloss porcelain finish reflects light to make the room appear larger and more spacious. Porcelain is an extremely durable and hardwearing material that whilst not only exuding class and sophistication, is also extremely versatile and can be used in a variety of applications.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/is/image/wickes/GPID_1100665908_00?$normal$")
flooring_fourth.save!
flooring_fifth = Material.new(name: " Porcelain Wall & Floor", category: "Flooring & Tiling", description: "These polished glazed porcelain tiles feature a stunning veinstone effect. Printed using high definition technology, achieve the look of natural stone with these durable wall and floor tiles in practical, low maintenance porcelain.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/is/image/wickes/GPID_1100629192_00?$normal$")
flooring_fifth.save!


bricks_first = Material.new(name: "Red Facing Brick", category: "Bricks and Lintels", description: "The deep and rich fusions of reds provide Edmonton Stock with its vivid colour, these colours are further enhanced by the delicate stock finish given to this red facing brick. Waterstruck inspired finish coupled with rich and warm shades of red and orange bring this brick to life. ", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://lordsbm.co.uk/pub/media/catalog/product/cache/d2b76106ac544cf84aaef82e9d7f833e/S/B/SBR01790_19ab.jpg")
bricks_first.save!
bricks_second = Material.new(name: "Concrete Lintel", category: "Bricks and Lintels", description: "A robust and cost-effective option where a lintel is required. Available in a range of sizes to meet every need", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://www.yorkbuilding.com/wp-content/uploads/2020/08/Lintel_Unit-1.jpg")
bricks_second.save!
bricks_third = Material.new(name: "Steel Lintel", category: "Bricks and Lintels", description: "Industry leading angle section lintel.Multi-function product for discharging water from external walls, lintels, cavity trays and the ventilation of cavity walls", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://iglintels.com/wp-content/uploads/2018/06/100m_inner_leaf.jpg")
bricks_third.save!
bricks_fourth = Material.new(name: " Facing Brick", category: "Bricks and Lintels", description: "The cool greys in the Greylake product can be used as a bold, single colour or mixed with other colours from the marshalls Bricks and Masonry range to provide bespoke blends. This perforated facing brick is truly adaptable and will compliment many styles of buildings", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/is/image/wickes/GPID_5000012157_00?$normal$")
bricks_fourth.save!
bricks_fifth = Material.new(name: "Red Mavado Facing Brick", category: "Bricks and Lintels", description: "Mavado Red is a vibrant red facing brick from the innovative Kingsvale range. A stunning range of sustainable face brick products brought to you by Marshalls Bricks and Masonry", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/is/image/wickes/GPID_5000081371_00?$normal$")
bricks_fifth.save!


painting_first = Material.new(name: "Paint Roller Kit", category: "Painting & Decorating", description: "This roller kit is ideal for painting your walls and ceilings. It's best suited for using emulsions and satin paints on smooth and semi-smooth surfaces, and contains everything you need, whether you're cutting in, glossing the woodwork, or wanting to paint those hard-to-reach areas.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://ae01.alicdn.com/kf/HTB1qxZMjvImBKNjSZFlq6A43FXaB/Multifunctional-tool-paint-5-pcs-DIY-Paint-Roller-Kit-Painting-Runner-Decor-Professional-Tools-Painting-Wall.jpg")
painting_first.save!
painting_second = Material.new(name: "White Emulsion Paint", category: "Painting & Decorating", description: "This vinyl matt emulsion provides a superb, smooth finish to interior walls and ceilings. It's very easy to apply and has a low spatter rate, and it's touch dry within 1-2 hours. Available in a wide range of colours to suit your taste, it's perfect for any interior painting project.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/image/upload/b_rgb:FFFFFF,c_pad,dpr_1.0,f_jpg,h_2250,q_auto:good,w_2250/c_pad,h_2250,w_2250/v1/products/wickes/I9026_121110_00?pgw=1&pgwact=1")
painting_second.save!
painting_third = Material.new(name: "Light Grey Wallpaper", category: "Painting & Decorating", description: "An incredibly versatile linen texture effect wallpaper in a soft grey colourway. Ideal for any home and would suit bedrooms, hallways and living rooms. Fashionable and flexible.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://img.fruugo.com/product/9/64/155875649_max.jpg")
painting_third.save!
painting_fourth = Material.new(name: "Fence Paint Brush", category: "Painting & Decorating", description: "Large brush with soft grip handle suitable for painting and treating sheds and fences.", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://img.fruugo.com/product/9/64/155875649_max.jpg")
painting_fourth.save!
painting_fifth = Material.new(name: "Arthouse Metallic Wave White & Silver Wallpaper ", category: "Painting & Decorating", description: "Sleek and modern, this wallpaper is the definition of chic with a vertical design in pale silvery tones. Contrasting metallic and glitter, the effect is stunning, bouncing light back into your room", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), image: "https://media.wickes.co.uk/is/image/wickes/GPID_1100683043_00?$normal$")
painting_fifth.save!


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
