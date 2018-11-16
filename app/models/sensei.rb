class Sensei < ApplicationRecord
  belongs_to :user
  has_many :lesson_requests
  validates :user_id, uniqueness: true, presence: true
end
