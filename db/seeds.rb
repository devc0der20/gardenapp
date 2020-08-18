# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

  # user = User.create(email:Faker::Internet.email)
10.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = "1234567"
  user.save!
  p user
end

10.times do
  garden = Garden.new
  garden.price = rand(155)
  garden.name = Faker::Address.city_prefix
  garden.user_id = (1..10).to_a.sample
  garden.description = Faker::Marketing.buzzwords
  garden.address = Faker::Address.street_address
  garden.save!
  p garden
end

20.times do
  booking = Booking.new
  booking.start_date = Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
  booking.end_date = Faker::Date.between(from: '2014-09-26', to: '2014-09-27')
  booking.user_id = rand(1..10)
  booking.garden_id = rand(1..10)
  booking.save!
  p booking
end

