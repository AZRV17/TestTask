require "test_helper"

class Api::V1::ConsultationRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do

    post '/api/v1/consultation_requests', params: {
      patient_id: 980190962,
      text: "test"
    }, as: :json
    assert_response :success
  end
end
