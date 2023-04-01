require "test_helper"

class SchedualsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get scheduals_index_url
    assert_response :success
  end
end
