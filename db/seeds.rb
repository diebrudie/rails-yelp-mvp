# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'deleting all restaurants'
Restaurant.delete_all

p 'fake seeding your data base with 100 new restaurants'

100.times do
  rest = Restaurant.create(
    name: Faker::Restaurant.name,
    address:  Faker::Address.full_address,
    phone_number: Faker::PhoneNumber,
    category: Restaurant::CATEGORIES.sample
  )
  puts 'Created the restaurant with the following attributes'
  puts "Name: #{rest.name}"
  puts "Address: #{rest.address}"
  puts "Phone Number: #{rest.phone_number}"
  puts "Category: #{rest.category}"
  puts ''
end

puts 'Finished!'
