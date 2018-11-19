class SenseiSubject < ApplicationRecord
  belongs_to :sensei
  belongs_to :subject

  validates_uniqueness_of :subject_id, :scope => :sensei_id
end
