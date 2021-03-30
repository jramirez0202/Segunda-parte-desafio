require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get Create" do
    get search_Create_url
    assert_response :success
  end

end
