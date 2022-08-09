require 'rails_helper'

RSpec.describe 'airline show page' do
  united = Airline.create!(name: "United")
  southwest = Airline.create!(name: "Southwest")
  delta = Airline.create!(name: "Delta")

  flight1 = united.flights.create!(number: "8", date: "August 4", departure_city: "Austin", arrival_city: "LA")
  flight2 = southwest.flights.create!(number: "17", date: "January 6", departure_city: "Dublin", arrival_city: "Minneapolis")
  flight3 = delta.flights.create!(number: "37", date: "May 9", departure_city: "Atlanta", arrival_city: "Lincoln")

  larry = Passenger.create!(name: "Larry", age: 20)
  mary = Passenger.create!(name: "Mary", age: 15)
  gary = Passenger.create!(name: "Gary", age: 40)
  sherri = Passenger.create!(name: "Sherri", age: 50)

  PassengerFlight.create!(passenger_id: 1, flight_id: 1)
  PassengerFlight.create!(passenger_id: 2, flight_id: 1)
  PassengerFlight.create!(passenger_id: 3, flight_id: 2)
  PassengerFlight.create!(passenger_id: 4, flight_id: 3)
  PassengerFlight.create!(passenger_id: 4, flight_id: 2)

  it 'shows passengers on that airline (unique list)' do
    visit "/airlines/1"

    expect(page).to have_content("Larry")
    expect(page).not_to have_content("Mary")
    expect(page).not_to have_content("Gary")

    #test for duplicate passengers
  end


end
