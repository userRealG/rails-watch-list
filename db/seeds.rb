# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts 'Cleaning database...'
Movie.destroy_all

10.times do
  Movie.create(
    title: Faker::Name.name,
    overview: Faker::Movie.quote,
    posterurl: Faker::Placeholdit.image(size: '50x50', format: 'jpeg', background_color: :random),
    rating: Faker::Number.within(range: 1..10).to_f
  )
end
puts 'Creating movies...'

puts 'Finished!'
