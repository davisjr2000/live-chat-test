class AddSessionTokenToChatRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :session_token, :string
  end
end
