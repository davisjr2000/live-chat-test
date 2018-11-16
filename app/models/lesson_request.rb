class LessonRequest < ApplicationRecord
  belongs_to :sensei
  belongs_to :user
  belongs_to :subject
  has_one :chat_rooms
end
