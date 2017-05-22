require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get site_top_url
    assert_response :success
  end

end
