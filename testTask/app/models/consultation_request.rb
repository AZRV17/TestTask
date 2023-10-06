class ConsultationRequest < ApplicationRecord
  belongs_to :patient
  has_one :recommendation
  validates :text, presence: true
end
