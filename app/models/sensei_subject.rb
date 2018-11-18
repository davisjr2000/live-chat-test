class SenseiSubject < ApplicationRecord
  belongs_to :sensei
  belongs_to :subject
  has_many :school_subjects
end
