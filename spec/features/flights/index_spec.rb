require 'rails_helper'

RSpec.describe 'flights index page' do
  united = Airline.create!(name: "United")
  southwest = Airline.create!(name: "Southwest")
  delta = Airline.create!(name: "Delta")

  flight1 = united.flights.create!(number: "8", date: "August 4", departure_city: "Austin", arrival_city: "LA")
  flight2 = southwest.flights.create!(number: "17", date: "January 6", departure_city: "Dublin", arrival_city: "Minneapolis")
  flight3 = delta.flights.create!(number: "37", date: "May 9", departure_city: "Atlanta", arrival_city: "Lincoln")

  larry = Passengers.create!(name: "Larry", age: 20)
  mary = Passengers.create!(name: "Mary", age: 30)
  gary = Passengers.create!(name: "Gary", age: 40)
  sherri = Passengers.create!(name: "Sherri", age: 50)

  PassengerFlight.create!(passenger_id: 1, flight_id: 1)
  PassengerFlight.create!(passenger_id: 2, flight_id: 1)
  PassengerFlight.create!(passenger_id: 3, flight_id: 2)
  PassengerFlight.create!(passenger_id: 4, flight_id: 3)
  PassengerFlight.create!(passenger_id: 4, flight_id: 2)

  it 'should show all flight numbers, airlines, and passengers' do
    visit "/flights"

    expect(page).to have_content("8")
    expect(page).to have_content("17")
    expect(page).to have_content("37")
    expect(page).not_to have_content("44")

    expect(page).to have_content("United")
    expect(page).to have_content("Southwest")
    expect(page).to have_content("Delta")
    expect(page).not_to have_content("Spirit")

    expect(page).to have_content("Larry")
    expect(page).to have_content("Mary")
    expect(page).to have_content("Gary")
    expect(page).not_to have_content("Bob")
  end
end
