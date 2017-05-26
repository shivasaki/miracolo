require 'test_helper'

class ContentsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get contents_main_url
    assert_response :success
  end

end
