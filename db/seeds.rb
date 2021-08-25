# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Games::Pokemon.name,
    address: Faker::Games::Pokemon.location,
    category: Restaurant::CATEGORIES.sample
  )
  puts "#{restaurant.name} created"
end
