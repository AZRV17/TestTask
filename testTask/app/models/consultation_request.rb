class ConsultationRequest < ApplicationRecord
  belongs_to :patient
  validates :text, presence: true
end
