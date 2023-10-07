class Api::V1::RecommendationsController < ApplicationController
  require 'uri'
  require 'net/http'

  def create
    recommendation = Recommendation.new(consultation_request_id: params[:id], text: get_recommendation)
    consultation_request = ConsultationRequest.find(params[:id])
    patient = Patient.find(consultation_request.patient_id)

    if recommendation.save
      RecommendationMailer.with(recommendation: recommendation, patient_email: patient.email)
                          .new_recommendation_mailer.deliver_later

      render json: { message: 'Recommendation created successfully' }, status: :created
    else
      render json: { errors: recommendation.errors.full_messages }, status: :bad_request
    end
  end

  def get
    consultation_requests = ConsultationRequest.where(patient_id: params[:patient_id])
    recommendations = Recommendation.where(consultation_request_id: consultation_requests.map(&:id))

    render json: { recommendations: recommendations }
  end

  private

  def get_recommendation
    url = URI("https://endlessmedicalapi1.p.rapidapi.com/GetOutcomes")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true

    request = Net::HTTP::Get.new(url)
    request["X-RapidAPI-Key"] = 'd00cf360ffmsh45622ca7c07a3b2p17eec6jsn02e646e00c42'
    request["X-RapidAPI-Host"] = 'endlessmedicalapi1.p.rapidapi.com'

    response = http.request(request)

    body = JSON.parse(response.body)

    body["data"][rand(0..383)]
  end
end
