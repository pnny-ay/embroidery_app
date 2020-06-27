require 'test_helper'

class EmbroideriesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get embroideries_home_url
    assert_response :success
  end

  test "should get about" do
    get embroideries_about_url
    assert_response :success
  end

end
