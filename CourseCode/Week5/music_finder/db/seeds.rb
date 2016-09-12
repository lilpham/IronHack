# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

johnnyswim = Concert.create!(artist: 'JohnnySwim', venue: 'Troubador', city: 'Los Angeles', date: Time.new(2016,10,8,8), price: 30, description: 'Talented and adorable husband-wife duo')