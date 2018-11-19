class Subject < ApplicationRecord
  belongs_to :parent, class_name: "Subject", optional: true
  has_many :children, class_name: "Subject", foreign_key: "parent_id"

  has_many :sensei_subjects
  has_many :lesson_requests
end
