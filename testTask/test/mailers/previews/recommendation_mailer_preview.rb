# Preview all emails at http://localhost:3000/rails/mailers/recommendation_mailer
class RecommendationMailerPreview < ActionMailer::Preview
  def new_recommendation_mailer
    recommendation = Recommendation.new(id: 1, consultation_request_id: 1, text: "Text", created_at: Time.now, updated_at: Time.now)
    patient = Patient.new(full_name: "Alex", email: "alexazrv@gmail.com", phone_number: "+79999999999", birth_date: "2003-05-10")

    RecommendationMailer.with(recommendation: recommendation, email: patient.email)
                        .new_recommendation_mailer
  end
end
