# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airline.destroy_all #this is just an app
Flight.destroy_all #plz dont revoke my precheck
Passenger.destroy_all

united = Airline.create!(name: "United")
southwest = Airline.create!(name: "Southwest")
delta = Airline.create!(name: "Delta")

flight1 = united.flights.create!(number: "1", date: "August 4", departure_city: "Austin", arrival_city: "LA")
flight2 = southwest.flights.create!(number: "17", date: "January 6", departure_city: "Dublin", arrival_city: "Minneapolis")
flight3 = delta.flights.create!)(number: "37", date: "May 9", departure_city: "Atlanta", arrival_city: "Lincoln")

larry = Passenger.create!(name: "Larry", age: 20)
mary = Passenger.create!(name: "Mary", age: 30)
gary = Passenger.create!(name: "Gary", age: 40)
sherri = Passenger.create!(name: "Sherri", age: 50)

PassengerFlight.create!(passenger_id: 1, flight_id: 1)
PassengerFlight.create!(passenger_id: 2, flight_id: 1)
PassengerFlight.create!(passenger_id: 3, flight_id: 2)
PassengerFlight.create!(passenger_id: 4, flight_id: 3)
PassengerFlight.create!(passenger_id: 4, flight_id: 2)
