require "test_helper"

class RiderTest < ActiveSupport::TestCase
  test "should be valid" do
    rider = Rider.new
    assert_not rider.valid?, "Empty rider should not be valid"
    
    rider.first_name = "John"
    rider.last_name = "Doe"
    rider.city_of_origin = "Hickory Hills"
    rider.state_of_origin = "IL"
    rider.latitude = 40.00
    rider.longitude = -40.00
    assert rider.valid?, "Rider with all required attributes should be valid"
  end
end
