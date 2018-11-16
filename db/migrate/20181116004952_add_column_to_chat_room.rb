class AddColumnToChatRoom < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :lesson_request, foreign_key: true
    add_column :chat_rooms, :student_online, :boolean
    add_column :chat_rooms, :sensei_online, :boolean
    add_column :chat_rooms, :rating, :integer
  end
end
