class Submission < ApplicationRecord
  validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
end