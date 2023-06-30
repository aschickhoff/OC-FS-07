require "test_helper"

class RidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rider = riders(:one)
  end

  test "should get index" do
    get riders_url
    assert_response :success
    assert_not_nil assigns(:riders), "Riders not set in the controller"
  end

  test "should get show" do
    get rider_url(@rider)
    assert_response :success
    assert_not_nil assigns(:rider), "Rider not set in the controller"
    assert_not_nil assigns(:riders), "Riders not set in the controller"
    assert_not_nil assigns(:rider_locations), "Rider locations not set in the controller"
    assert_not_nil assigns(:rider_locations_json), "Rider locations JSON not set in the controller"
  end
end

