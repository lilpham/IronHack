# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

johnnyswim = Concert.create!(artist: 'JohnnySwim', venue: 'Troubador', city: 'Los Angeles', date: Time.new(2016,9,8,8), price: 30, description: 'Talented and adorable husband-wife duo')
the_beatles = Concert.create!(artist: 'The Beatles', venue: 'The Roof', city: 'Miami', date: Time.new(2016,12,25,8), price: 5000, description: 'MERRY CHRISTMAS. They are back and more alive than ever!')
johnnyswim = Concert.create!(artist: 'Oh Wonder', venue: 'House of Blues', city: 'Orlando', date: Time.new(2016,9,4,8), price: 25, description: 'Chill vibes and good times with these two')