# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east = { name: "Pizza East", address: "Amsterdam", category: "italian" }
klaproos = { name: "Klaproos", address: "Rotterdam", category: "italian" }
diwali_palace = { name: "Diwali Palace", address: "Amsterdam", category: "japanese" }
pizza_west = { name: "Pizza West", address: "56A Shoreditch High St, London E1 6PQ", category: "french" }

[dishoom, pizza_east, klaproos, diwali_palace, pizza_west].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
