# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Garden.destroy_all
# Booking.destroy_all



require 'open-uri'

  # user = User.create(email:Faker::Internet.email)
10.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = "1234567"
  user.save!
  p user
end

10.times do
  url = ["http://res.cloudinary.com/dw63pmf1x/image/upload/v1597829982/cljtfotubtsehttehyjv.jpg", "https://res.cloudinary.com/dw63pmf1x/image/upload/v1597829991/ptuiyypuscqczidriuf0.jpg", "https://res.cloudinary.com/dw63pmf1x/image/upload/v1597829970/cjvd1yvu2zdkn5b9cfs5.jpg", "https://res.cloudinary.com/midoffice/image/upload/w_1400/v1/production/5d5a70dd23ca8c00281c801c/tauchen-thailand-phuket-sea-bees-palm-garden-resort-aussenanlage_2da9ace5-52eb-4536-bb0d-04fc0cf31640", "https://res.cloudinary.com/midoffice/image/upload/w_1400/v1/production/5d5a70dd23ca8c00281c801c/tauchen-thailand-phuket-sea-bees-palm-garden-resort-yoga_b089e12a-7652-4b08-b1be-795fdff1bffe", "https://res.cloudinary.com/midoffice/image/upload/w_1400/v1/production/5d5a70dd23ca8c00281c801c/tauchen-thailand-phuket-sea-bees-palm-garden-resort-bungalows-aussen_81c3c528-bc07-4d29-85c5-ecf83c57d531", "https://res.cloudinary.com/tourasia/image/upload/w_1920/w_1920,h_768,c_crop,y_363/f_auto,q_auto:good,ar_2.5,c_crop/w_1920/pool-pool-by-night-93672.jpg"].sample
  address =["Stillerzeile 111, 12587 Berlin", "Friedrichshagener Str. 9, 12555 Berlin", "Attendorner Weg 45, 13507 Berlin", "Wittestraße 30/haus l, 13509 Berlin", "Im Erpelgrund 79, 13503 Berlin", "Dorfstraße 15, 13059 Berlin", "Welsestraße 56-58, 13057 Berlin"].sample
  garden = Garden.new
  garden.price = rand(155)
  garden.name = "#{Faker::Address.city_prefix} #{Faker::Address.community}, #{Faker::Address.state}"
  garden.user_id = (1..10).to_a.sample
  garden.description = Faker::Hipster.sentence(word_count: 3, supplemental: false, random_words_to_add: 4)
  garden.address = address
  file = URI.open(url)
  garden.photo.attach(io: file, filename: "#{garden.name}" , content_type: 'image/jpg')
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


