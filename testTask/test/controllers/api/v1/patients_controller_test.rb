require "test_helper"

class Api::V1::PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get get_recommendations" do
    get api_v1_patients_get_recommendations_url
    assert_response :success
  end
end
