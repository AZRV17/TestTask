class RecommendationMailer < ApplicationMailer
  def new_recommendation_mailer
    @recommendation = params[:recommendation]
    @patient_email = params[:email]

    mail(to: @patient_email, subject: "New recommendation")
  end
end
