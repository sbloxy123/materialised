# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

<<<<<<< HEAD
puts "Cleaning database..."
Material.destroy_all
Basket.destroy_all

puts "Creating basket_item..."
bask_1 = {id: 1, quantity: 4, material_id: 1 }
bask_2 =  {id: 2, quantity: 4, material_id: 2 }

[bask_1, bask_2].each do |attributes|
  basket_item = Basket.create!(attributes)
  puts "Created #{basket_item.name}"
end
puts "created basket_item!"


puts "Creating material..."
mat_1 = {id: 1, name: "wood", description: "7 Boundary St, London E2 7JE"}
mat_2 =  {id: 2, name: "metal", description: "56A Shoreditch High St, London E1 6PQ"}

[mat_1, mat_2].each do |attributes|
  material = Material.create!(attributes)
  puts "Created #{material.name}"
end
puts "created materials!"
=======
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
driver_one = Driver.new(name: "tim", location:"london", vehicle_type: "Medium truck")
driver_one.save!
driver_second = Driver.new(name: "william", location: "DARTFORD", vehicle_type: "Large truck")
driver_second.save!
driver_third = Driver.new(name: "bill",location: "Bexley", vehicle_type: "truck ")
driver_third.save!

# puts 'order_materials...'
# Order_materials_first = Order_material.new(order_id: 1, material_id:1, quantity:rand(1..100) )
# Order_materials_first = Order_material.new(order_id: 2, material_id:2, quantity:rand(1..100) )
# Order_materials_first = Order_material.new(order_id: 3, material_id:3, quantity:rand(10..100))
# Order_materials.save!

puts 'materials...'
# puts 3.times do
construction_first = Material.new(name: "timber", category: "Construction", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), supplier_id: 1)
construction_first.save!
construction_second = Material.new(name: "sheet materials", category: "Construction", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), supplier_id: 1)
construction_second.save!
construction_third = Material.new(name: "roofing", category: "construction", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(1..100), width: rand(10..100), weight: rand(10..100), supplier_id: 1)
construction_third.save!
plumbing_first = Material.new(name: "Decking", category: "Garden", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), supplier_id: 2)
plumbing_first.save!
plumbing_second = Material.new(name: "paving and walling", category: "Garden", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width:rand(10..100), weight: rand(1..100), supplier_id: 2)
plumbing_second.save!
plumbing_third = Material.new(name: "fencing", category: "Garden", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(1..100), supplier_id: 2)
plumbing_third.save!
electrical_first = Material.new(name: "outdoorlights", category: "electrical", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), supplier_id: 3)
electrical_first.save!
electrical_second = Material.new(name: "security alarms", category: "electrical", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), supplier_id: 3)
electrical_second.save!
electrical_third = Material.new(name: "electrical cables", category: "electrical", description: "#{Faker::Hipster.paragraph(sentence_count: 3)}", price: rand(10..100), length: rand(10..100), width: rand(10..100), weight: rand(10..100), supplier_id: 3)
electrical_third.save!

# puts 'suppliers...'
# supplier_one = Supplier.new(name: "Faker::Name.supplier_name", address: "#{Faker::Address.street_address}, #{Faker::Address.city}")
# supplier_one.save!
# supplier_second = Supplier.new(name: "Faker::Name.supplier_name,", address: "#{Faker::Address.street_address}, #{Faker::Address.city}")
# supplier_second.save!
# supplier_third = Supplier.new(name: "Faker::Name.supplier_name,", address: "#{Faker::Address.street_address}, #{Faker::Address.city}")
# supplier_third.save!
# puts 'Finished!'

>>>>>>> 73895141711a927486d61616b1586e4df532de4d
