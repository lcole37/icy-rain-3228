require 'rails_helper'

RSpec.describe Flight, type: :model do
  it {should belong_to :airline}
  it {should have_many :passenger_flights}
  it {should have_many :airlines, through: :passenger_flights}
end
