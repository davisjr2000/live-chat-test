class SenseiSubject < ApplicationRecord
  belongs_to :sensei
  belongs_to :subject
  validates :price_per_hour, uniqueness: true
  validates_uniqueness_of :subject_id, :scope => :sensei_id
end
