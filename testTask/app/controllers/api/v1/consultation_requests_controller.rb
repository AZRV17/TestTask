class Api::V1::ConsultationRequestsController < ApplicationController
  def create
    consultation_request = ConsultationRequest.new(consultation_request_params)
    if consultation_request.save
      render json: { message: 'Consultation request created successfully' }, status: :created
    else
      render json: { errors: consultation_request.errors.full_messages }, status: :bad_request
    end
  end



  def create_recommendation
    recommendation = Recommendation.new(consultation_request_id: params[:id], text: get_recommendation)

    if recommendation.save
      render json: { message: 'Recommendation created successfully' }, status: :created
    else
      render json: { errors: recommendation.errors.full_messages }, status: :bad_request
    end
  end

  private

  def consultation_request_params
    params.require(:consultation_request).permit([:patient_id, :text])
  end

  # def get_recommendation
  #   url = URI("https://endlessmedicalapi1.p.rapidapi.com/GetOutcomes")
  #
  #   http = Net::HTTP.new(url.host, url.port)
  #   http.use_ssl = true
  #
  #   request = Net::HTTP::Get.new(url)
  #   request["X-RapidAPI-Key"] = 'd00cf360ffmsh45622ca7c07a3b2p17eec6jsn02e646e00c42'
  #   request["X-RapidAPI-Host"] = 'endlessmedicalapi1.p.rapidapi.com'
  #
  #   response = http.request(request)
  #
  #   body = JSON.parse(response.body)
  #
  #
  #
  #   body["data"][rand(0..383)]
  # end
end
