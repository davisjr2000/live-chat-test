class Sensei < ApplicationRecord
  belongs_to :user
  has_many :lesson_requests
end
