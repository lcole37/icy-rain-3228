class Airline < ApplicationRecord
  has_many :flights

  def adult_passengers
    passengers
   #need a lot of work figuring this out
  end
end
