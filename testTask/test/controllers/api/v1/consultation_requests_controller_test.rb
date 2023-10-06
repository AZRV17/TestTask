require "test_helper"

class Api::V1::ConsultationRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_consultation_requests_create_url
    assert_response :success
  end
end
