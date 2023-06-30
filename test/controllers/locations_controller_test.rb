require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get locations" do
    get locations_url
    assert_response :success
    assert_not_nil assigns(:riders), "Riders not set in the controller"
    assert_not_nil assigns(:rider_locations), "Rider locations not set in the controller"
    assert_not_nil assigns(:rider_locations_json), "Rider locations JSON not set in the controller"
  end
end
