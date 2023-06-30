require "test_helper"

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_submission_url
    assert_response :success
    assert_not_nil assigns(:submission), "Submission not set in the controller"
  end

  test "should create submission" do
    assert_difference("Submission.count") do
      post submissions_url, params: { submission: { first_name: "John", last_name: "Doe", email: "john@example.com", slogan: "My awesome slogan" } }
    end

    assert_redirected_to root_path
    assert_equal "Thank you for your submission!", flash[:notice]
  end

  test "should not create invalid submission" do
    assert_no_difference("Submission.count") do
      post submissions_url, params: { submission: { first_name: "", last_name: "", email: "", slogan: "" } }
    end

    assert_response :success
    assert_template :new
    assert_not_empty assigns(:submission).errors
  end
end

