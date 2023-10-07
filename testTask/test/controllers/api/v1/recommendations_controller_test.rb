require "test_helper"

class Api::V1::RecommendationsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_recommendations_create_url
    assert_response :success
  end
end

# RSpec.describe RecommendationsController, type: :controller do
#   let(:consultation_request) { create(:consultation_request) }
#
#   describe '#create' do
#     it 'creates a new recommendation' do
#       post :create, params: {
#         id: consultation_request.id,
#         text: 'This is a recommendation.'
#       }
#
#       expect(response).to have_http_status(:created)
#       expect(response.body).to include('Recommendation created successfully')
#
#       recommendation = Recommendation.find_by(consultation_request_id: consultation_request.id)
#       expect(recommendation).to be_present
#       expect(recommendation.text).to eq('This is a recommendation.')
#     end
#
#     it 'returns errors if the recommendation cannot be created' do
#       post :create, params: {
#         id: consultation_request.id,
#         text: ''
#       }
#
#       expect(response).to have_http_status(:bad_request)
#       expect(response.body).to include('Text cannot be blank')
#
#       recommendation = Recommendation.find_by(consultation_request_id: consultation_request.id)
#       expect(recommendation).to be_nil
#     end
#   end
# end