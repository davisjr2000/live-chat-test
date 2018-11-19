class Sensei < ApplicationRecord
  belongs_to :user
  has_many :sensei_subjects
  belongs_to :school_subject
  validates :user_id, uniqueness: true, presence: true
  include PgSearch
  pg_search_scope :search_by_username,
    associated_against: {
      user: [ :email ]
    },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
