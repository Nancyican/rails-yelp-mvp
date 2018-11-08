# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Wagamama',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '07507094655',
    category:     'japanese'
  },
  {
    name:         'sushi',
    address:      '10 Boundary St, London E2 7JE',
    phone_number: '07507094655',
    category:     'chinese'
  },
  {
    name:         'frite frite',
    address:      '8 Boundary St, Paris E2 7JE',
    phone_number: '07507094655',
    category:     'belgian'
  },
  {
    name:         'pain francée',
    address:      '8 Boundary St, Bruxelles E2 7JE',
    phone_number: '07507094655',
    category:     'french'
  },
  {
    name:         'pizza pizza',
    address:      '8 Boundary St, Rome E2 7JE',
    phone_number: '07507094655',
    category:     'italian'
  }
]

restaurants_attributes.each do |hash|
  Restaurant.create!(hash)
end

puts 'Finished!'
