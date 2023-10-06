class Api::V1::PatientsController < ApplicationController
  def get_recommendations
    consultation_requests = ConsultationRequest.where(patient_id: params[:patient_id])
    recommendations = Recommendation.where(consultation_request_id: consultation_requests.map(&:id))

    render json: { recommendations: recommendations }
  end
end
