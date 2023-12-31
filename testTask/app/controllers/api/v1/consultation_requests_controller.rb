class Api::V1::ConsultationRequestsController < ApplicationController
  def create
    consultation_request = ConsultationRequest.new(consultation_request_params)
    if consultation_request.save
      render json: { message: 'Consultation request created successfully' }, status: :created
    else
      render json: { errors: consultation_request.errors.full_messages }, status: :bad_request
    end
  end

  private

  def consultation_request_params
    params.require(:consultation_request).permit([:patient_id, :text])
  end
end
