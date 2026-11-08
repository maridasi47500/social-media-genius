require "test_helper"

class ThreewishesControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get threewishes_hello_url
    assert_response :success
  end
end
