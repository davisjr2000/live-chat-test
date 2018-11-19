class Sensei < ApplicationRecord
  belongs_to :user
  has_many :sensei_subjects
  has_many :subjects, through: :sensei_subjects
  validates :user_id, uniqueness: true, presence: true
  include PgSearch
  pg_search_scope :search_by_subject,
    associated_against: {
      subjects: [ :title ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
