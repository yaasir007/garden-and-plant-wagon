# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Garden.destroy_all
Plant.destroy_all
puts 'Creating restaurants..'
25.times do
  Garden.create(
    name: Faker::Restaurant.name
  )
end

25.times do
  Plant.create(
    name: Faker::Restaurant.name,
    image_url: Faker::Book.title
  )
end
puts 'Finished!'
