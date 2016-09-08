# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ironhack = Project.create!(name: 'Ironhack', description:'Ironhack')

timetracker = Project.create!(name: 'Time tracking app', description: 'track time')

recipes = Project.create!(name: 'Recipes', description:'Track my fav recipes')

tacos = Project.create!(name: 'Tacos', description:'Delicious from a truck')

Project.create!(name: 'Pizza', description:'flat and good')

Project.create!(name: 'Gummies', description:'Haribo is the best')

Project.create!(name: 'Matcha', description:'Green goodness')

Project.create!(name: 'Boba', description:'Dessert from the gods')

Project.create!(name: 'Water', description:'my everything')

Project.create!(name: 'Chapstick', description:'Lip love')

ironhack.time_entries.create(hours: 5, minutes: 3, date: 2016-09-09)
ironhack.time_entries.create(hours: 4, minutes: 34)
ironhack.time_entries.create(hours: 2, minutes: 29)
ironhack.time_entries.create(hours: 1, minutes: 40)