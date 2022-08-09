class Airline < ApplicationRecord
  has_many :flights

  def adult_passengers
    #this method needs to find all/select passengers where age >= 18.
   #need a lot of work figuring this out.
  end
end
