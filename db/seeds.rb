# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# chinese italian japanese french belgian
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 868-575-9999, category:"belgian"}

burgerking = {name: "Burger King", address: "8 Boundary St, London E2 7JE", phone_number: 868-575-0000, category:"italian"}

hongtho = {name: "Hongtho", address: "9 Boundary St, London E2 7JE", phone_number: 868-575-6969, category:"chinese"}

paris = {name: "Paris", address: "10 Boundary St, London E2 7JE", phone_number: 868-575-2222, category:"french"}

noodlestix = {name: "NoodStix", address: "11 Boundary St, London E2 7JE", phone_number: 868-575-1111, category:"japanese"}

[dishoom, burgerking, hongtho, paris, noodlestix].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Finished!"
