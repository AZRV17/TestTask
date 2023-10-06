require "test_helper"

class RecommendationTest < ActiveSupport::TestCase
  test "should be valid" do
    recommendation_one = recommendations(:one)
    assert recommendation_one.valid?
  end
end
