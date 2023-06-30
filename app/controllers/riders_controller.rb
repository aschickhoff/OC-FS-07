class RidersController < ApplicationController
  def show
    @rider = Rider.find(params[:id])
    @rider_locations = [[@rider.latitude, @rider.longitude, @rider.first_name, @rider.last_name]]
    @rider_locations_json = @rider_locations.to_json
  end
end
