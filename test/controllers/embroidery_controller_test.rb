require 'test_helper'

class EmbroideryControllerTest < ActionDispatch::IntegrationTest
  test "should get stock" do
    get embroidery_stock_url
    assert_response :success
  end

end
