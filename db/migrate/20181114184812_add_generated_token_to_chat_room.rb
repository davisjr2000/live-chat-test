class AddGeneratedTokenToChatRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :chat_rooms, :generated_token, :string
  end
end
