class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user
  after_create :broadcast_message

  validates_presence_of :body
  def message_time
    created_at.strftime("%l:%M %p")
  end

  # ...

  def broadcast_message
    ActionCable.server.broadcast("conversation_#{conversation.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }
      ),
      current_user_id: user.id
    })
  end
end
