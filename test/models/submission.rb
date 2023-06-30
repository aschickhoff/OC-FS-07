require "test_helper"

class SubmissionTest < ActiveSupport::TestCase
  test "should be valid" do
    submission = Submission.new
    assert_not submission.valid?, "Empty submission should not be valid"
    
    submission.first_name = "John"
    submission.last_name = "Doe"
    submission.email = "john@example.com"
    submission.slogan = "This is a slogan"
    assert submission.valid?, "Submission with all required attributes should be valid"
  end
  
  test "should have valid email format" do
    submission = Submission.new
    submission.first_name = "John"
    submission.last_name = "Doe"
    submission.email = "wrongemail"
    submission.slogan = "This is a slogan"
    assert_not submission.valid?, "Submission with invalid email format should not be valid"
  end
end
