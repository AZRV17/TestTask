require "test_helper"

class RecommendationMailerTest < ActionMailer::TestCase
  test "new_recommendation_mailer" do
    # Создаем объект рекомендации и email для теста
    recommendation = recommendations(:one) # Замените на свой фиктивный объект рекомендации
    email = "test@example.com" # Замените на свой email для теста

    # Вызываем метод new_recommendation_mailer с передачей параметров
    mail = RecommendationMailer.with(recommendation: recommendation, email: email).new_recommendation_mailer

    # Проверяем, что письмо отправлено на правильный email
    assert_equal [email], mail.to

    # Проверяем, что тема письма правильная
    assert_equal "New recommendation", mail.subject

    # Проверяем, что в письме есть текст с данными из рекомендации
    assert_match recommendation.text, mail.body.encoded
  end
end
