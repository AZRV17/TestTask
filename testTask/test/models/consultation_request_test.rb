require "test_helper"

class ConsultationRequestTest < ActiveSupport::TestCase
  test "should be valid" do
    reviews_one = consultation_requests(:one)
    assert reviews_one.valid?
  end
end
