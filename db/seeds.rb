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
User.destroy_all
Driver.destroy.all
materials.destroy.all
require 'faker'

puts 'users...'
user_first = User.new(name: "john", email: "john12@gmail.com", id: 1)
user_first.save!
# puts 'orders...'
# order_first = Order.new(order: "", site_location: "london", driver_id: 1, user_id: 1)
# order_first.save!
# order_second = Order.new(order: "", site_location: "DARTFORD", driver_id: 2, user_id: 1)
# order_second.save!
# order_third = Order.new(order: "", site_location:"BEXLEY", driver_id: 3, user_id: 1)
# order_third.save!
puts 'Drivers...'
driver_one = Driver.new(name: "tim", location:, vehicle_type: "Medium truck")
driver_one.save!
driver_second = Driver.new(name: "william", location:, vehicle_type: "Large truck")
driver_second.save!
driver_third = Driver.new(name: "bill", vehicle_type: "Moped ")
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

puts 'supplier...'
supplier_one = Supplier.new(name: "Faker::Name.supplier_name", address: "#{Faker::Address.street_address}, #{Faker::Address.city}")
supplier_one.save!
supplier_second = Supplier.new(name: "Faker::Name.supplier_name,", address: "#{Faker::Address.street_address}, #{Faker::Address.city}")
supplier_second.save!
supplier_third = Supplier.new(name: "Faker::Name.supplier_name,", address: "#{Faker::Address.street_address}, #{Faker::Address.city}")
supplier_third.save!
puts 'Finished!'
