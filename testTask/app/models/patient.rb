class Patient < ApplicationRecord
  # has_many :consultation_requests
  validates :full_name, presence: true
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :phone_number, presence: true, format: { with: /\A\+7\d{10}\z/}
  validates :birth_date, presence: true
end
