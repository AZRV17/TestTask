require "test_helper"

class Api::V1::RecommendationsControllerTest < ActionDispatch::IntegrationTest
  test "should post recommendation" do
    post "/api/v1/consultation_requests/980190962/recommendations", params: {
      request_id: 980190962,
    }, as: :json
    assert_response :success
  end

  test "should get recommendations" do
    get "/api/v1/patients/980190962/recommendations"
    assert_response :success
  end
end