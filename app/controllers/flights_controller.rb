class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def delete #should this be in passengers controller file?
    Passenger.delete(params[:id])
    redirect_to '/flights'
  end
end
