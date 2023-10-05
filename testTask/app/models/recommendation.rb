class Recommendation < ApplicationRecord
  belongs_to :consultation_request
  validates :text, presence: true
end
