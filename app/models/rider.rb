class Rider < ApplicationRecord
  validates :first_name, :last_name, :city_of_origin, :state_of_origin, :latitude, :longitude, presence: true
end


