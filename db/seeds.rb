# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'cleaning database'
Flat.destroy_all

puts 'Creating database...'

5.times do
  Flat.create!(
    name: Faker::Beer.name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.sentence(word_count: rand(30..100)),
    price_per_night: rand(50..150),
    number_of_guests: rand(2..8)
  )
end
