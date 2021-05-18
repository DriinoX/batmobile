# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# puts 'Destroy all'
#   Phone.destroy_all
#   User.destroy_all
#   Booking.destroy_all
# puts 'Done'

puts 'CREATION 1O USERS'
10.times do
  had = User.create!(first_name: Faker::Games::Pokemon.name, last_name: Faker::JapaneseMedia::OnePiece.character, address: Faker::Address.street_address, email: Faker::Internet.email, phone_number: Faker::PhoneNumber.cell_phone_in_e164, gender: ['masculin', 'feminin'].sample, username: Faker::Games::LeagueOfLegends.champion, password: '123456')
  puts 'User create'
  phone = Phone.create!(state: ['Correct', 'Bon etat', 'Tres bon etat'].sample, user: had, start_dispo: Faker::Date.in_date_period, end_dispo: Faker::Date.in_date_period, brand: ['Apple', 'Samsung', 'Huawei', 'Xiaomi'].sample, model: 'Iphone X', description: Faker::Lorem.word )
  puts 'Phone create'
end
puts 'DONE'


puts 'Booking create'
Booking.create!(start_booking: Faker::Date.in_date_period, end_booking: Faker::Date.in_date_period, user: User.first, phone: Phone.first)
Booking.create!(start_booking: Faker::Date.in_date_period, end_booking: Faker::Date.in_date_period, user: User.last, phone: Phone.last)
puts 'Done'
