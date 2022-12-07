# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

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
