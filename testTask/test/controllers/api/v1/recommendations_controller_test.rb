require "test_helper"

class Api::V1::RecommendationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_recommendations_create_url
    assert_response :success
  end
end
