require "test_helper"

class PatientTest < ActiveSupport::TestCase
  test "should be valid" do
    patient_one = patients(:one)
    assert patient_one.valid?
  end

  test "should not be valid" do
    patient_two = patients(:two)
    assert_not patient_two.valid?
  end
end
