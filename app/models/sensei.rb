class Sensei < ApplicationRecord
  belongs_to :user
  has_many :sensei_subjects
  has_many :subjects, through: :sensei_subjects
  validates :user_id, uniqueness: true, presence: true
  include PgSearch
  pg_search_scope :search_by_username,
    associated_against: {
      sensei_subjects: [ :subject_id ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
