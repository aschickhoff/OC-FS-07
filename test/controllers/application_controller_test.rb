require "test_helper"

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should set riders before action" do
    get "/"
    assert_response :success

    assert_not_nil assigns(:riders), "Riders not set in the controller"
    assert_equal Rider.all, assigns(:riders), "Incorrect riders set in the controller"
  end
end
