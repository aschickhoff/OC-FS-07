class LocationsController < ApplicationController
  def locations
    @riders = Rider.all
    @rider_locations = Rider.pluck(:latitude, :longitude, :first_name, :last_name, :city_of_origin, :state_of_origin)
    @rider_locations_json = @rider_locations.to_json
  end
end

