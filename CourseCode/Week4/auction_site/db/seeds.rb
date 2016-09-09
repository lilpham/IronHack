# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(name:"Lilly", email:"lilly@example.com")
user2 = User.create!(name:"Matt", email:"matt@example.com")
user3 = User.create!(name:"Daniel", email:"daniel@example.com")
user4 = User.create!(name:"Greg", email:"greg@example.com")

user1.products.create!(title:"stuffed animal",description:"perfect for bedtime", deadline: Time.now + 14.days)
user1.products.create!(title:"water",description:"JT drank it", deadline: Time.now + 20.days)
user1.products.create!(title:"guava pastry",description:"made with tlc", deadline: Time.now + 80.days)
user1.products.create!(title:"apple",description:"Celine Dion bit out of it", deadline: Time.now + 100.days)