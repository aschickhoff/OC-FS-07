class Submission < ApplicationRecord
  validates :first_name, :last_name, :email, :slogan, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end

