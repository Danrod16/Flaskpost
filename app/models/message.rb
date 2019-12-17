class Message < ApplicationRecord
  belongs_to :match
  belongs_to :user

  validates :content, presence: true, allow_blank: false
  after_create :broadcast_message

  def broadcast_message
    ActionCable.server.broadcast("match_#{match.id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "messages/message",
        locals: { message: self, user_is_messages_author: false }
      ),
      current_user_id: user.id
    })
  end
end
