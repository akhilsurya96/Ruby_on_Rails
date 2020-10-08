require 'test_helper'

class Welcome1ControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome1_index_url
    assert_response :success
  end

end
