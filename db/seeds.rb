# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Restaurant.destroy_all

5.times do
  restaurant = Restaurant.create(
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w(chinese italian japanese french belgian).sample,
  )
end
5.times do
  review = Review.create(
    content: Faker::TvShows::BojackHorseman.quote,
    rating: (0..5).to_a.sample
    )
end
