class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :lesson_request

  before_create :set_session_token

  private

  def set_session_token
    opentok = OpenTok::OpenTok.new ENV['API_KEY'], ENV['API_SECRET']
    session = opentok.create_session :media_mode => :routed
    self.session_token = session.session_id
    self.generated_token = session.generate_token
  end
end
