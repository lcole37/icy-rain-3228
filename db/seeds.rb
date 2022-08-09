# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
united = Airline.create!(name: "United")
southwest = Airline.create!(name: "Southwest")
delta = Airline.create!(name: "Delta")

flight1 = united.flights.create!(number: 1, date: "August 4", departure_city: "Austin", arrival_city: "LA")
flight2 = southwest.flights.create!(number: 1, date: "January 6", departure_city: "Dublin", arrival_city: "Minneapolis")
flight3 = delta.flights.create!)(number: 1, date: "May 9", departure_city: "Atlanta", arrival_city: "Lincoln")

larry = Passengers.create!(name: "Larry", age: 20)
mary = Passengers.create!(name: "Mary", age: 30)
gary = Passengers.create!(name: "Gary", age: 40)
sherri = Passengers.create!(name: "Sherri", age: 50)
