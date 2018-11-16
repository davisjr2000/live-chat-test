class Agenda < ApplicationRecord
  belongs_to :sensei

  validates_uniqueness_of :date, :scope => :sensei_id
end
